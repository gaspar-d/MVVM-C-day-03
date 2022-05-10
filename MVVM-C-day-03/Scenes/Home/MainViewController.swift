//
//  MainViewController.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

final class MainViewController: UIViewController, Coordinating {
	var coordinator: Coordinator?
	private var customView: MainView?
	private var viewModel: ViewModel?
	
	init(viewModel: ViewModel) {
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
		coordinator?.eventOccurred(with: .sendToSecondView)
	}
}