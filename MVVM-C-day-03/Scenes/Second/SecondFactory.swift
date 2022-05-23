//
//  SecondFactory.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 10/05/22.
//

import Foundation

class SecondFactory {
	
	static func make() -> SecondViewController {
		
		let model = Model(labelA: "", labelB: "", labelC: "")
		let service = Service(model: model)
		let secondVM = SecondViewModel(service: service)
		let vc = SecondViewController(viewModel: secondVM)
		
		return vc
	}
}
