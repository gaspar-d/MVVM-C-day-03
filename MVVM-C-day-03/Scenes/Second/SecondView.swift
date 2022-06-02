//
//  SecondView.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

final class SecondView: UIView {
	
	private lazy var nameLabel: UILabel = {
		let label = UILabel()
		label.font = .systemFont(ofSize: 28, weight: .bold)
		label.textColor = .white
		label.textAlignment = .center
		label.numberOfLines = 0
		label.lineBreakMode = .byWordWrapping
		label.sizeToFit()
		return label
	}()
	
	private lazy var dateLabel: UILabel = {
		let label = UILabel()
		label.font = .systemFont(ofSize: 18, weight: .bold)
		label.textColor = .white
		label.textAlignment = .center
		label.text = "Please insert your birthday"
		return label
	}()
	
	private lazy var datePicker: UIDatePicker = {
		let picker = UIDatePicker()
		picker.translatesAutoresizingMaskIntoConstraints = false
		picker.contentHorizontalAlignment = .center
		picker.datePickerMode = .date
		return picker
	}()
	
	private lazy var buttonToThirdVC: UIButton = {
		let configuration = UIButton.Configuration.filled()
		let button = UIButton(configuration: configuration)
		button.setTitle("Confirm", for: .normal)
		return button
	}()
	
	private lazy var stack: UIStackView = {
		let stack = UIStackView(arrangedSubviews: [nameLabel, dateLabel, datePicker, buttonToThirdVC])
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
	
	public func setNameLabel(label: String) {
		nameLabel.text = "Welcome \(label)"
	}
	
	public var getPickerDate: Date {
		datePicker.date
	}
	
	public func didButtonTapped(_ target: Any?, action: Selector) {
		buttonToThirdVC.addTarget(target, action: action, for: .touchUpInside)
	}
}

extension SecondView: ViewTemplate {
	func setUpComponents() {
		addSubview(stack)
	}
	
	func setUpConstraints() {
		let defaultHeight: CGFloat = 44
		let paddings: CGFloat = 20
		
		NSLayoutConstraint.activate([
			datePicker.centerXAnchor.constraint(equalTo: stack.centerXAnchor, constant: 0),
			buttonToThirdVC.heightAnchor.constraint(equalToConstant: defaultHeight),
			
			stack.centerXAnchor.constraint(equalTo: centerXAnchor),
			stack.centerYAnchor.constraint(equalTo: centerYAnchor),
			stack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: paddings),
			stack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -paddings)
		])
	}
}
