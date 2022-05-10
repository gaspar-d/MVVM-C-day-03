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
		label.text = "Scene C"
		label.font = .systemFont(ofSize: 28, weight: .bold)
		label.textColor = .white
		label.textAlignment = .center
		
		return label
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		setup()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

extension ThirdView: ViewTemplate {
	func setupComponents() {
		addSubview(viewName)

	}
	
	func setupConstraints() {
		NSLayoutConstraint.activate([
			viewName.centerXAnchor.constraint(equalTo: centerXAnchor),
			viewName.centerYAnchor.constraint(equalTo: centerYAnchor)
		])
	}
}
