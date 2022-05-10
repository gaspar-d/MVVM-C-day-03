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
		setupButtonAction()
		setupViewLabel()
	}
	
	private func buildView() {
		customView = MainView()
		view = customView
		view.backgroundColor = .orange
		title = "Main"
	}
	
	// TODO: - This worked well, let's do the same at Second and Third VC tomorrow.
	private func setupViewLabel() {
		guard let viewModel = viewModel else {
			return
		}
		customView?.setViewLabel(label: viewModel.getLabelA)
	}
	
	private func setupButtonAction() {
		customView?.didButtonTapped(self, action: #selector(buttonSendToSecondVCTapped))
	}
	
	@objc private func buttonSendToSecondVCTapped() {
		coordinator?.eventOccurred(with: .sendToSecondView)
	}
}
