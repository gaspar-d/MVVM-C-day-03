//
//  MainCoordinator.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

class MainCoordinator: Coordinator {
	var navigationController: UINavigationController
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	public func eventOccurred(with event: Event) {
		switch event {
		case .sendToSecondView:
			let vc = SecondViewController()
			vc.coordinator = self
			navigationController.pushViewController(vc, animated: true)
			
		case .sendToThirdView:
			let vc = ThirdViewController()
			vc.coordinator = self
			navigationController.pushViewController(vc, animated: true)
		}
	}
	
	public func start() {
		let model = Model(labelA: "A", labelB: "B", labelC: "C")
		let vm = ViewModel(model: model)
		let vc = MainViewController(viewModel: vm)
		
		vc.coordinator = self
		navigationController.pushViewController(vc, animated: false)
	}
}
