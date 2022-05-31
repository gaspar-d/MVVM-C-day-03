//
//  SecondView.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

final class SecondView: UIView {
	
	private lazy var viewLabel: UILabel = {
		let label = UILabel()
		label.font = .systemFont(ofSize: 28, weight: .bold)
		label.textColor = .white
		label.textAlignment = .center
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
		let stack = UIStackView(arrangedSubviews: [viewLabel, dateLabel, datePicker, buttonToThirdVC])
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
	
	public func setViewLabel(label: String) {
		viewLabel.text = "Welcome \(label)"
	}
	
	public var getPickerDate: Date {
		datePicker.date
	}
	
//	public func getPickerDate() -> Date {
//		return datePicker.date
//	}
	
	public func didButtonTapped(_ target: Any?, action: Selector) {
		buttonToThirdVC.addTarget(target, action: action, for: .touchUpInside)
	}
}

extension SecondView: ViewTemplate {
	func setUpComponents() {
		addSubview(stack)
	}
	
	func setUpConstraints() {
		NSLayoutConstraint.activate([
			datePicker.centerXAnchor.constraint(equalTo: stack.centerXAnchor, constant: 0),
			
			stack.centerXAnchor.constraint(equalTo: centerXAnchor),
			stack.centerYAnchor.constraint(equalTo: centerYAnchor)
		])
	}
}
