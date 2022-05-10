//
//  ViewTemplate.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import Foundation

protocol ViewTemplate {
	func setUp()
	func setUpComponents()
	func setUpConstraints()
	func setUpExtraConfigurations()
}

extension ViewTemplate {
	public func setUp() {
		setUpComponents()
		setUpConstraints()
		setUpExtraConfigurations()
	}
	
	public func setUpExtraConfigurations() {}
}
