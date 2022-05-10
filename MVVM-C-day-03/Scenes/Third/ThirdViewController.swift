//
//  ThirdViewController.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import UIKit

final class ThirdViewController: UIViewController, Coordinating {
	weak var coordinator: Coordinator?
	
	private var customView: ThirdView?

    override func viewDidLoad() {
        super.viewDidLoad()

		buildView()
    }
	
	private func buildView() {
		customView = ThirdView()
		view = customView
		view.backgroundColor = .systemGreen
		title = "Third"
	}
}
