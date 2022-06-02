//
//  ThirdFactory.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 10/05/22.
//

import Foundation

class ThirdFactory {
	
	static func make(name: String) -> ThirdViewController {
		
		let service = Service()
		let thirdVM = ThirdViewModel(service: service)
		thirdVM.name = name
		let vc = ThirdViewController(viewModel: thirdVM)
		
		return vc
	}
}

