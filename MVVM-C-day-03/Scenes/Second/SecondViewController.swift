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
		customView = SecondView()
		view = customView
		view.backgroundColor = .purple
		title = "Second"
	}
	
	private func setUpViewLabel() {
		guard let label = viewModel?.getLabelB else { return }
		customView?.setViewLabel(label: label)
	}
	
	private func setUpButtonAction() {
		customView?.didButtonTapped(self, action: #selector(buttonToThirdVCTapped))
	}
	
	@objc private func buttonToThirdVCTapped() {
		coordinator?.eventOccurred(with: .sendToThirdView)
	}
}
