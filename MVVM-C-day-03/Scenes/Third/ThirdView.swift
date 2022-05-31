//
//  ThirdView.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

final class ThirdView: UIView {
	
	private lazy var nameLabel: UILabel = {
		let label = UILabel()
		label.font = .systemFont(ofSize: 28, weight: .bold)
		label.textColor = .white
		label.textAlignment = .center
		return label
	}()
	
	private lazy var dateLabel: UILabel = {
		let label = UILabel()
		label.font = .systemFont(ofSize: 22, weight: .bold)
		label.textColor = .white
		label.textAlignment = .center
		label.text = "Your age: "
		return label
	}()
	
	
	private lazy var stack: UIStackView = {
		let stack = UIStackView(arrangedSubviews: [nameLabel, dateLabel])
		stack.translatesAutoresizingMaskIntoConstraints = false
		stack.alignment = .leading
		stack.axis = .vertical
		stack.distribution = .equalCentering
		stack.spacing = 10
		return stack
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		setUp()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	public func setViewLabel(label: String) {
		nameLabel.text = "Your name:  \(label)"
	}
}

extension ThirdView: ViewTemplate {
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
