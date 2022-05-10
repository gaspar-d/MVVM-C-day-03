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
		let vm = ViewModel(model: model)
		let vc = SecondViewController(viewModel: vm)
		
		return vc
	}
}
