//
//  SecondViewController.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

final class SecondViewController: UIViewController {
	
	private var customView: SecondView?
	public var viewModel: SecondViewModelProtocol
	
	init(viewModel: SecondViewModelProtocol) {
		self.viewModel = viewModel
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
		buildView()
		setUpViewLabel()
		setUpButtonAction()
    }
	
	private func buildView() {
		customView = SecondView()
		view = customView
		view.backgroundColor = .systemGreen
		title = "Second"
	}
	
	private func setUpViewLabel() {
		guard let name = viewModel.getName else { return }
		customView?.setNameLabel(label: name)
	}
	
	private func setUpButtonAction() {
		customView?.didButtonTapped(self, action: #selector(buttonToThirdVCTapped))
	}
	
	@objc private func buttonToThirdVCTapped() {
		guard let name = viewModel.getName,
			  let date = customView?.getDate,
				viewModel.isDateValid(date)
		else {
			ageIsInvalidAlert()
			return
		}
		
		viewModel.pushThirdVC(name: name, date: date)
	}
	
	private func ageIsInvalidAlert() {
		let alert = UIAlertController(title: "Please insert a valid age!",
									  message: "Age cannot be a future date",
									  preferredStyle: .alert)
		
		let okAction = UIAlertAction(title: "Ok", style: .cancel)
		alert.addAction(okAction)
		
		present(alert, animated: true)
	}
}
