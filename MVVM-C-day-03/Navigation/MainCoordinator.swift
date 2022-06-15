//
//  MainCoordinator.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

final class MainCoordinator: Coordinator {
	
	public var navigationController: UINavigationController
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	public func eventOccurred(with event: Event) {
		switch event {
		case let .sendToSecondView(name):
			let vc = SecondFactory.make(name: name, coordinator: self)
			navigationController.pushViewController(vc, animated: true)
			
		case let .sendToThirdView(name, age):
			let vc = ThirdFactory.make(name: name, age: age, coordinator: self)
			navigationController.pushViewController(vc, animated: true)
		}
	}
	
	public func start() {
		let vc = MainFactory.make(coordinator: self)
		navigationController.show(vc, sender: self)
	}
}
