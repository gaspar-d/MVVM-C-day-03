//
//  SecondViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 11/05/22.
//

import Foundation

final class SecondViewModel: NSObject {
	weak var coordinator: Coordinator?
	private var service: Service?
	var name: Observable<String?> = Observable(nil)
	
	init(service: Service) {
		self.service = service
		self.name = Observable("Testing")
	}
	
	public var getLabelB: String {
		guard let label = service?.getData()?.labelB else { return "" }
		return label
	}
	
	public var getName: String? {
		let data = service?.getData()?.name
		name.value = data
		return name.value
	}
	
	public func pushThirdVC() {
		coordinator?.eventOccurred(with: .sendToThirdView)
	}
}
