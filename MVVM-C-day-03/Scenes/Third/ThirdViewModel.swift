//
//  ThirdViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 11/05/22.
//

import Foundation

class ThirdViewModel: NSObject {
	weak var coordinator: Coordinator?
	private var service: Service
	
	init(service: Service) {
		self.service = service
	}
	
	public var getLabelC: String {
		guard let label = service.data?.labelC else { return ""}
		return label
	}
}
