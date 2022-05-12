//
//  MainViewController.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

// TODO: - Can be made using protocols
// TODO: - https://medium.com/nerd-for-tech/mvvm-coordinators-ios-architecture-tutorial-fb27eaa36470
protocol MainViewControllerProtocol: AnyObject {
	var getLabelA: String { get }
	func pushSecondVC()
}
// TODO: -

final class MainViewController: UIViewController {
	private var customView: MainView?
	public var viewModel: MainViewModel?
	weak var delegate: MainViewControllerProtocol?
	
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
		viewModel?.pushSecondVC()
	}
}


