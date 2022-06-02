//
//  ViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 11/05/22.
//

import Foundation

final class Service: NSObject {
	private var data: Model?
	
	override init() {
		super.init()
		
		setData()
	}
	
	private func setData() {
		data = Model(labelA: "Login")
	}
	
	public func getData() -> Model? {
		return data
	}
}

