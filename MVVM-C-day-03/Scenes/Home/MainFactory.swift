//
//  HomeFactory.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 10/05/22.
//

import Foundation

enum MainFactory {
	
	static func make(coordinator: Coordinator) -> MainViewController {
		let service = Service()
		let mainVM = MainViewModel(service: service)
		mainVM.coordinator = coordinator
		let vc = MainViewController(viewModel: mainVM)
		
		return vc
	}
}
