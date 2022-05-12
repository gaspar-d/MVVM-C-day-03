//
//  ViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 11/05/22.
//

import Foundation

class ViewModel: NSObject {
	private var model: Model
	private(set) var data: Model?
	
	init(model: Model) {
		self.model = model
		super.init()
		
		getData()
	}
	
	private func getData() {
		data = Model(labelA: "Y", labelB: "X", labelC: "Z")
	}
}
