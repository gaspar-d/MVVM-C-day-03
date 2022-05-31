//
//  SecondViewController.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

final class SecondViewController: UIViewController {
	private var customView: SecondView?
	public var viewModel: SecondViewModel?
	
	init(viewModel: SecondViewModel) {
		self.viewModel = viewModel
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()

		buildView()
		setBinders()
		setUpViewLabel()
		setUpButtonAction()
    }
	
	private func buildView() {
		customView = SecondView()
		view = customView
		view.backgroundColor = .systemGreen
		title = "Second"
	}
	
	private func setBinders() {
		viewModel?.name.bind { [weak self] name in
			
			self?.customView?.setViewLabel(label: name ?? "")
		}
	}
	
	private func setUpViewLabel() {
		guard let name = viewModel?.getName else { return }
		
		customView?.setViewLabel(label: name)
	}
	
	private func setUpButtonAction() {
		customView?.didButtonTapped(self, action: #selector(buttonToThirdVCTapped))
	}
	
	@objc private func buttonToThirdVCTapped() {
		guard let pickerAge = customView?.getPickerDate else { return }
		
		pickerAge < Date.now ? viewModel?.pushThirdVC() : ageIsInvalidAlert()
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
