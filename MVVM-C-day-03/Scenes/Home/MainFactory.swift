//
//  HomeFactory.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 10/05/22.
//

import UIKit

final class MainFactory {
	
	static func make() -> MainViewController {
		let service = Service()
		let mainVM = MainViewModel(service: service)
		let vc = MainViewController(viewModel: mainVM)
		
		return vc
	}
}
