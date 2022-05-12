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
			let vc = SecondFactory.make()
			vc.viewModel?.coordinator = self
			navigationController.pushViewController(vc, animated: true)
			
		case .sendToThirdView:
			let vc = ThirdFactory.make()
			vc.viewModel?.coordinator = self
			navigationController.pushViewController(vc, animated: true)
		}
	}
	
	public func start() {
		let vc = HomeFactory.make()
		vc.viewModel?.coordinator = self
		navigationController.show(vc, sender: self)
	}
}
