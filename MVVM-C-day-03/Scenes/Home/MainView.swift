//
//  MainView.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

protocol MainViewProtocol {
	func didButtonTapped(_ target: Any?, action: Selector)
}

class MainView: UIView {

	private lazy var viewName: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "Scene A"
		label.font = .systemFont(ofSize: 28, weight: .bold)
		label.textColor = .white
		label.textAlignment = .center
		
		return label
	}()
	
	private lazy var buttonSendToSecondVC: UIButton = {
		let configuration = UIButton.Configuration.filled()
		let button = UIButton(configuration: configuration)
		button.translatesAutoresizingMaskIntoConstraints = false
		button.setTitle("Press me", for: .normal)
		return button
	}()
	
	private lazy var stack: UIStackView = {
		let stack = UIStackView(arrangedSubviews: [viewName, buttonSendToSecondVC])
		stack.translatesAutoresizingMaskIntoConstraints = false
		stack.axis = .vertical
		stack.distribution = .equalCentering
		stack.spacing = 20
		
		return stack
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		setup()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

extension MainView: MainViewProtocol {
	func didButtonTapped(_ target: Any?, action: Selector) {
		buttonSendToSecondVC.addTarget(target, action: action, for: .touchUpInside)
		
		// FIXME: - Remember to ask this in the mentoring !!!
		print("Why it's being called on load?")
	}
}

extension MainView: ViewTemplate {
	func setupComponents() {
		addSubview(stack)
	}
	
	func setupConstraints() {
		NSLayoutConstraint.activate([
			stack.centerXAnchor.constraint(equalTo: centerXAnchor),
			stack.centerYAnchor.constraint(equalTo: centerYAnchor)
		])
	}
}
