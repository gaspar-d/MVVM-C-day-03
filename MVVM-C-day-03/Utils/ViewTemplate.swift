//
//  ViewTemplate.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import Foundation

protocol ViewTemplate {
	func setup()
	func setupComponents()
	func setupConstraints()
	func setupExtraConfigurations()
}

extension ViewTemplate {
	public func setup() {
		setupComponents()
		setupConstraints()
		setupExtraConfigurations()
	}
	
	public func setupExtraConfigurations() {}
}
