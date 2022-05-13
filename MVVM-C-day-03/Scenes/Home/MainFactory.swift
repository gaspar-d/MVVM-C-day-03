//
//  HomeFactory.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 10/05/22.
//

import UIKit

class MainFactory {
	
	static func make() -> MainViewController {
		
		let model = Model(labelA: "", labelB: "", labelC: "")
		let vm = ViewModel(model: model)
		let mainVM = MainViewModel(viewModel: vm)
		let vc = MainViewController(viewModel: mainVM)
		
		return vc
	}
}
