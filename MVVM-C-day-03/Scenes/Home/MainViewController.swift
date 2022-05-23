//
//  MainViewController.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

final class MainViewController: UIViewController {
	private var customView: MainView?
	public var viewModel: MainViewModel?
	public var validator: NameValidator?
	
	init(viewModel: MainViewModel, validator: NameValidator) {
		self.viewModel = viewModel
		self.validator = validator
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
		customView = MainView()
		view = customView
		view.backgroundColor = .orange
		title = "Main"
	}
	
	private func setUpViewLabel() {
		guard let label = viewModel?.getLabelA else { return }
		customView?.setViewLabel(label: label)
	}
	
	private func setUpButtonAction() {
		customView?.didButtonTapped(self, action: #selector(buttonToSecondVCTapped))
	}
	
	@objc private func buttonToSecondVCTapped() {
		guard let name = customView?.getInputedName() else { return }
		viewModel?.setName(name: name)
		guard let safeName = validator?.isNameValidated(name: name) else { return }
		
		safeName ? viewModel?.pushSecondVC() : invalidInputAlert()
	}
	
	private func invalidInputAlert() {
		let alert = UIAlertController(title: "Please insert a valid user name!",
									  message: "Insert at least first and last name",
									  preferredStyle: .alert)
		
		let okAction = UIAlertAction(title: "Ok", style: .cancel)
		alert.addAction(okAction)
		present(alert, animated: true)
	}
}

