//
//  ThirdViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 11/05/22.
//

import Foundation

protocol ThirdViewModelProtocol: AnyObject {
	func setCoordinator(with coordinator: Coordinator?)
	var getName: String? { get }
	var getAge: String? { get }
}

final class ThirdViewModel: NSObject {
	weak var coordinator: Coordinator?
	public var name: String?
	public var age: String?
	
}

extension ThirdViewModel: ThirdViewModelProtocol {
	func setCoordinator(with coordinator: Coordinator?) {
		self.coordinator = coordinator
	}
	
	public var getName: String? {
		name
	}
	
	public var getAge: String? {
		age
	}
}
