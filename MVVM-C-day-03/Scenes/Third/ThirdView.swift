//
//  ThirdView.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

class ThirdView: UIView {
	private lazy var viewName: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.font = .systemFont(ofSize: 28, weight: .bold)
		label.textColor = .white
		label.textAlignment = .center
		return label
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		setUp()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	public func setViewLabel(label: String) {
		viewName.text = "Scene \(label)"
	}
}

extension ThirdView: ViewTemplate {
	func setUpComponents() {
		addSubview(viewName)

	}
	
	func setUpConstraints() {
		NSLayoutConstraint.activate([
			viewName.centerXAnchor.constraint(equalTo: centerXAnchor),
			viewName.centerYAnchor.constraint(equalTo: centerYAnchor)
		])
	}
}
