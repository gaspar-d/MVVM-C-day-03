//
//  HomeFactory.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 10/05/22.
//

import UIKit

class HomeFactory {
	
	static func make() -> MainViewController {
		
		let model = Model(labelA: "", labelB: "", labelC: "")
		let vm = ViewModel(model: model)
		
		let vc = MainViewController(viewModel: vm)
		
		return vc
	}
}
