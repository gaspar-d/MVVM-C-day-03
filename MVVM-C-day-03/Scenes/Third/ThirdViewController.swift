//
//  ThirdViewController.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

final class ThirdViewController: UIViewController {
	weak var coordinator: Coordinator?
	private var customView: ThirdView?
	private var viewModel: ThirdViewModel?
	
	init(viewModel: ThirdViewModel) {
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
    }
	
	private func setUpViewLabel() {
		guard let label = viewModel?.getLabelC else { return }
		customView?.setViewLabel(label: label)
	}
	
	private func buildView() {
		customView = ThirdView()
		view = customView
		view.backgroundColor = .systemGreen
		title = "Third"
	}
}
