//
//  ThirdViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 11/05/22.
//

import Foundation

final class ThirdViewModel: NSObject {
	weak var coordinator: Coordinator?
	public var name: String?
	public var age: String?
	
	public var getName: String? {
		name
	}
	
	public var getAge: String? {
		age
	}
}
