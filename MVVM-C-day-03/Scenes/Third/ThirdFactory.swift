//
//  ThirdFactory.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 10/05/22.
//

import Foundation

final class ThirdFactory {
	
	static func make(name: String, age: String) -> ThirdViewController {
		let thirdVM = ThirdViewModel()
		thirdVM.name = name
		thirdVM.age = age
		let vc = ThirdViewController(viewModel: thirdVM)
		
		return vc
	}
}

