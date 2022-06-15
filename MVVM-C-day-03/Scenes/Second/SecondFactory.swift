//
//  SecondFactory.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 10/05/22.
//

import Foundation

enum SecondFactory {
	
	static func make(name: String, coordinator: Coordinator) -> SecondViewController {
		let secondVM = SecondViewModel()
		secondVM.name = name
		secondVM.coordinator = coordinator
		let vc = SecondViewController(viewModel: secondVM)
		
		return vc
	}
}
