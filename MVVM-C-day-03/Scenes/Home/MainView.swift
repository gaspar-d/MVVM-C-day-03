//
//  MainView.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

class MainView: UIView {

	private lazy var viewLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.font = .systemFont(ofSize: 28, weight: .bold)
		label.textColor = .white
		label.textAlignment = .center
		return label
	}()
	
	private lazy var buttonToSecondVC: UIButton = {
		let configuration = UIButton.Configuration.filled()
		let button = UIButton(configuration: configuration)
		button.translatesAutoresizingMaskIntoConstraints = false
		button.setTitle("Press me", for: .normal)
		return button
	}()
	
	private lazy var stack: UIStackView = {
		let stack = UIStackView(arrangedSubviews: [viewLabel, buttonToSecondVC])
		stack.translatesAutoresizingMaskIntoConstraints = false
		stack.axis = .vertical
		stack.distribution = .equalCentering
		stack.spacing = 20
		return stack
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		setUp()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func setViewLabel(label: String) {
		viewLabel.text = "Scene \(label)"
	}
	
	func didButtonTapped(_ target: Any?, action: Selector) {
		buttonToSecondVC.addTarget(target, action: action, for: .touchUpInside)
		
		// FIXME: - Remember to ask this in the mentoring !!!
		print("Why it's being called on load?")
	}
}

extension MainView: ViewTemplate {
	func setUpComponents() {
		addSubview(stack)
	}
	
	func setUpConstraints() {
		NSLayoutConstraint.activate([
			stack.centerXAnchor.constraint(equalTo: centerXAnchor),
			stack.centerYAnchor.constraint(equalTo: centerYAnchor)
		])
	}
}
