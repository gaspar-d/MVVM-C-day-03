//
//  NameValidator.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 23/05/22.
//

import Foundation

final class NameValidator {
	
	private let usernamePattern = #"^[a-zA-Z-]+ ?.* [a-zA-Z-]+$"#
	
	public func isNameValidated(name: String) -> Bool {
		let result = name.range(
			of: usernamePattern,
			options: .regularExpression
		)
		
		let validUsername = (result != nil)
		return validUsername
	}
}
