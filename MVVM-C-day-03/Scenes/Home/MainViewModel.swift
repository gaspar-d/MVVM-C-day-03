//
//  ViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import Foundation

protocol MainViewModelProtocol: AnyObject {
	func setCoordinator(with coordinator: Coordinator?)
	var getLabelA: String? { get }
	func pushSecondVC(name: String)
	func validateName(_ name: String) -> Bool
}

final class MainViewModel: NSObject {
	public var coordinator: Coordinator?
	private var service: ServiceProtocol?
	private var nameValidator: NameValidator
	
	init(service: ServiceProtocol, nameValidator: NameValidator = NameValidator.shared) {
		self.service = service
		self.nameValidator = nameValidator
		super.init()
	}
}

extension MainViewModel: MainViewModelProtocol {
	func setCoordinator(with coordinator: Coordinator?) {
		self.coordinator = coordinator
	}
	
	public var getLabelA: String? {
		return service?.getData?.labelA
	}
	
	public func pushSecondVC(name: String) {
		coordinator?.eventOccurred(with: .sendToSecondView(name))
	}
	
	public func validateName(_ name: String) -> Bool {
		nameValidator.isNameValidated(name: name)
	}
}

