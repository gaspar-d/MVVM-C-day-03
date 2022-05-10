//
//  SecondViewController.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

final class SecondViewController: UIViewController, Coordinating {
	weak var coordinator: Coordinator?
	
	private var customView: SecondView?
	
    override func viewDidLoad() {
        super.viewDidLoad()

		buildView()
		setupButtonAction()
    }
	
	private func buildView() {
		customView = SecondView()
		view = customView
		view.backgroundColor = .purple
		title = "Second"
	}
	
	private func setupButtonAction() {
		customView?.didButtonTapped(self, action: #selector(buttonSendToThirdVCTapped))
	}
	
	@objc private func buttonSendToThirdVCTapped() {
		coordinator?.eventOccurred(with: .sendToThirdView)
	}
}
