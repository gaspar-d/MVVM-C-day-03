//
//  SecondViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 11/05/22.
//

import Foundation

protocol SecondViewModelProtocol: AnyObject {
	var coordinator: Coordinator? { get set }
	var getName: String? { get }
	func pushThirdVC(name: String, date: Date)
	func dateValidation(date: Date) -> Int
	func isDateValid(_ date: Date) -> Bool
}

final class SecondViewModel: NSObject {
	weak var coordinator: Coordinator?
	private var dateValidator: DateValidator?
	public var name: String?
	
	init(dateValidator: DateValidator = DateValidator.shared) {
		self.dateValidator = dateValidator
	}
}

extension SecondViewModel: SecondViewModelProtocol {
	
	public var getName: String? {
		return name
	}
	
	public func pushThirdVC(name: String, date: Date) {
		let year = dateValidation(date: date)
		
		coordinator?.eventOccurred(with: .sendToThirdView(name, String(year)))
	}
	
	public func dateValidation(date: Date) -> Int {
		guard let year = dateValidator?.formatDateToAge(date: date) else { return 0 }
		
		return year
	}
	
	public func isDateValid(_ date: Date) -> Bool {
		date < Date.now
	}
}
