//
//  ThirdViewController.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

final class ThirdViewController: UIViewController {
	private var customView: ThirdView?
	public var viewModel: ThirdViewModel
	
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
		setupNameLabel()
		setupAgeLabel()
	}
	
	private func buildView() {
		customView = ThirdView()
		view = customView
		view.backgroundColor = .purple
		title = "Third"
	}
	
	private func setupNameLabel() {
		guard let name = viewModel.getName else { return }
		customView?.setNameLabel(name: name)
	}
	
	private func setupAgeLabel() {
		guard let age = viewModel.getAge else { return }
		customView?.setAgeLabel(age: age)
	}
}
