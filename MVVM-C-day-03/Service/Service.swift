//
//  ViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 11/05/22.
//

import Foundation

class Service: NSObject {
	private var model: Model
	var data: Model?
	
	init(model: Model) {
		self.model = model
		super.init()
		
		getData()
	}
	
	private func getData() {
		data = Model(labelA: "Login", labelB: "Second View", labelC: "Third View")
	}
}

