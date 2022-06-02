//
//  DateValidator.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 02/06/22.
//

import Foundation

final class DateValidator {
	
	static let shared = DateValidator()
	
	public func formatDateToAge(date: Date) -> Int? {
		Calendar.current.dateComponents([.year], from: date, to: Date()).year
	}
	
	private init() {}
}
