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
		label.font = .systemFont(ofSize: 38, weight: .bold)
		label.textColor = .white
		label.textAlignment = .center
		return label
	}()
	
	private lazy var nameInput: UITextField = {
		let text = UITextField()
		text.translatesAutoresizingMaskIntoConstraints = false
		text.backgroundColor = .white
		text.layer.cornerRadius = 5
		text.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
		text.leftViewMode = .always
		text.placeholder = "Please insert your full name"
		return text
	}()
	
	private lazy var buttonToSecondVC: UIButton = {
		let configuration = UIButton.Configuration.filled()
		let button = UIButton(configuration: configuration)
		button.translatesAutoresizingMaskIntoConstraints = false
		button.setTitle("Confirm", for: .normal)
		return button
	}()
	
	private lazy var stack: UIStackView = {
		let stack = UIStackView(arrangedSubviews: [viewLabel, nameInput, buttonToSecondVC])
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
		viewLabel.text = label
	}

	func getInputedName() -> String {
		guard let name = nameInput.text else { return "Failed" }
		return name
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
		let defaultHeight: CGFloat = 44
		let paddings: CGFloat = 20
		
		NSLayoutConstraint.activate([
			
			nameInput.heightAnchor.constraint(equalToConstant: defaultHeight),
			buttonToSecondVC.heightAnchor.constraint(equalToConstant: defaultHeight),
			
			stack.centerXAnchor.constraint(equalTo: centerXAnchor),
			stack.centerYAnchor.constraint(equalTo: centerYAnchor),
			stack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: paddings),
			stack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -paddings)
		])
	}
}
