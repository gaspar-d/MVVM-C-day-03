//
//  MainViewController.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

protocol MainViewControllerDelegate: AnyObject {
	var getLabelA: String { get }
	func pushSecondVC()
}

final class MainViewController: UIViewController {
	private var customView: MainView?
	public var viewModel: MainViewModel?
	weak var delegate: MainViewControllerDelegate?
	
	init(viewModel: MainViewModel, delegate: MainViewControllerDelegate) {
		self.viewModel = viewModel
		self.delegate = delegate
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
		// TODO: - viewModel  implementation works normally
		guard let viewModel = viewModel else {
			return
		}
		customView?.setViewLabel(label: viewModel.getLabelA)
		
//		guard let viewModel = delegate else {
//			return
//		}
//		customView?.setViewLabel(label: viewModel.getLabelA)
	}
	
	private func setUpButtonAction() {
		customView?.didButtonTapped(self, action: #selector(buttonToSecondVCTapped))
	}
	
	@objc private func buttonToSecondVCTapped() {
		// TODO: - viewModel  implementation works normally
		viewModel?.pushSecondVC()
//		delegate?.pushSecondVC()
	}
}


