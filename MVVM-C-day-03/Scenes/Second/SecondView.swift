//
//  SecondView.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

protocol SecondViewProtocol {
	func didButtonTapped(_ target: Any?, action: Selector)
}

class SecondView: UIView {
	
	private lazy var viewName: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "Scene B"
		label.font = .systemFont(ofSize: 28, weight: .bold)
		label.textColor = .white
		label.textAlignment = .center
		
		return label
	}()
	
	private lazy var buttonSendToThirdVC: UIButton = {
		let button = UIButton()
		button.translatesAutoresizingMaskIntoConstraints = false
		button.setTitle("Press me", for: .normal)
		button.backgroundColor = .systemBlue
		button.tintColor = .white
		button.layer.cornerRadius = 10
		
		return button
	}()
	
	private lazy var stack: UIStackView = {
		let stack = UIStackView(arrangedSubviews: [viewName, buttonSendToThirdVC])
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

extension SecondView: SecondViewProtocol {
	func didButtonTapped(_ target: Any?, action: Selector) {
		buttonSendToThirdVC.addTarget(target, action: action, for: .touchUpInside)
	}
}

extension SecondView: ViewTemplate {
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
