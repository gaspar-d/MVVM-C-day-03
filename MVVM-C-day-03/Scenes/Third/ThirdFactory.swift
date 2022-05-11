//
//  ThirdFactory.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 10/05/22.
//

import Foundation

class ThirdFactory {
	
	static func make() -> ThirdViewController {
		
		let model = Model(labelA: "", labelB: "", labelC: "")
		let vm = ViewModel(model: model)
		let thirdVM = ThirdViewModel(viewModel: vm)
		let vc = ThirdViewController(viewModel: thirdVM)
		
		return vc
	}
}
