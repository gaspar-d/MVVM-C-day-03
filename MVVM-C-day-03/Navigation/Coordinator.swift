//
//  Coordinator.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

enum Event {
	case sendToSecondView
	case sendToThirdView
}

protocol Coordinator: AnyObject {
	var navigationController: UINavigationController { get set}
	func eventOccurred(with event: Event)
	func start()
}
