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
	
	override func viewDidLoad() {
		super.viewDidLoad()

		buildView()
		setupButtonAction()
	}
	
	private func buildView() {
		customView = MainView()
		view = customView
		view.backgroundColor = .orange
		title = "Main"
	}
	
	private func setupButtonAction() {
		customView?.didButtonTapped(self, action: #selector(buttonSendToSecondVCTapped))
	}
	
	@objc private func buttonSendToSecondVCTapped() {
		coordinator?.eventOccurred(with: .sendToSecondView)
	}
}
