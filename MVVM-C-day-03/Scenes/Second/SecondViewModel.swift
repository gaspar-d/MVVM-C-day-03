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
	public var name: String?
	
	init(service: Service) {
		self.service = service
	}
	
	public var getLabelB: String {
		guard let label = service?.getData()?.labelB else { return "" }
		return label
	}
	
	public var getName: String? {
		return name
	}
	
	public func pushThirdVC(name: String) {
		coordinator?.eventOccurred(with: .sendToThirdView(name))
	}
}
