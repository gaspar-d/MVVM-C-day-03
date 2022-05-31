//
//  Date.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 31/05/22.
//

import Foundation

extension Date {

	var formattedToString: String {
		let formatter = DateFormatter()
		formatter.dateStyle = .short
		return formatter.string(from: self)
	}
	
	var ageIsValid: Int {
		Int(Calendar.current.dateComponents([.year, .day], from: self, to: Date()).year!)
	}
}
