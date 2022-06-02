//
//  SecondFactory.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 10/05/22.
//

import Foundation

final class SecondFactory {
	
	static func make(name: String) -> SecondViewController {
		
		let secondVM = SecondViewModel()
		secondVM.name = name
		let vc = SecondViewController(viewModel: secondVM)
		
		return vc
	}
}
