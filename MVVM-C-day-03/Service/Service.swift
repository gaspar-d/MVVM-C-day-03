//
//  ViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 11/05/22.
//

import Foundation

class Service: NSObject {
	private var data: Model?
	
	override init() {
		super.init()
		
		setData()
	}
	
	private func setData() {
		data = Model(labelA: "Login", labelB: "Second View", labelC: "Third View")
	}
	
	public func getData() -> Model? {
		return data
	}
	
	public func setName(name: String) {
		data?.name = name
	}
}

