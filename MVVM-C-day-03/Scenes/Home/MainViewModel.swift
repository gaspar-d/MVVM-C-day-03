//
//  ViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import Foundation

final class MainViewModel: NSObject {
	public var coordinator: Coordinator?
	private var service: Service?
	private var nameValidator: NameValidator
	
	init(service: Service, nameValidator: NameValidator = NameValidator.shared) {
		self.service = service
		self.nameValidator = nameValidator
		super.init()
	}
	
	public var getLabelA: String? {
		return service?.getData()?.labelA
	}
	
	public func pushSecondVC(name: String) {
		coordinator?.eventOccurred(with: .sendToSecondView(name))
	}
	
	public func validateName(_ name: String) -> Bool {
		nameValidator.isNameValidated(name: name)
	}
}

