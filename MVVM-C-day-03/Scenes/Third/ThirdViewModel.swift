//
//  ThirdViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 11/05/22.
//

import Foundation

final class ThirdViewModel: NSObject {
	weak var coordinator: Coordinator?
	private var service: Service?
	public var name: String?
	
	init(service: Service) {
		self.service = service
	}
	
	public var getLabelC: String {
		guard let label = service?.getData()?.labelC else { return ""}
		return label
	}
	
	public var getName: String? {
		name
	}
}
