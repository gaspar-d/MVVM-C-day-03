//
//  MainViewController.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

final class MainViewController: UIViewController {
	// TODO: -  This must be called in the ViewModel
//	var coordinator: Coordinator?
	// TODO: -
	
	private var customView: MainView?
	var viewModel: MainViewModel?
	
	init(viewModel: MainViewModel) {
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
		customView = MainView()
		view = customView
		view.backgroundColor = .orange
		title = "Main"
	}
	
	private func setUpViewLabel() {
		guard let viewModel = viewModel else {
			return
		}
		customView?.setViewLabel(label: viewModel.getLabelA)
	}
	
	private func setUpButtonAction() {
		customView?.didButtonTapped(self, action: #selector(buttonToSecondVCTapped))
	}
	
	@objc private func buttonToSecondVCTapped() {
//		coordinator?.eventOccurred(with: .sendToSecondView)
		viewModel?.pushSecondVC()
	}
}
