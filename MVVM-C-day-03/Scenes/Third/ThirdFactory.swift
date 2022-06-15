//
//  ThirdFactory.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 10/05/22.
//

import Foundation

enum ThirdFactory {
	
	static func make(name: String, age: String, coordinator: Coordinator) -> ThirdViewController {
		let thirdVM = ThirdViewModel()
		thirdVM.name = name
		thirdVM.age = age
		thirdVM.coordinator = coordinator
		let vc = ThirdViewController(viewModel: thirdVM)
		
		return vc
	}
}
