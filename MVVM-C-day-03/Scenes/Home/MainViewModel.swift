//
//  ViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import Foundation

class MainViewModel: NSObject {
	public var coordinator: Coordinator?
	private var service: Service?
	
	init(service: Service) {
		self.service = service
		super.init()
	}
	
	public var getLabelA: String {
		guard let label = service?.data?.labelA else { return ""}
		return label
	}
	
	public func setName(name: String) {
		service?.data?.name = name
	}

	public func pushSecondVC() {
		coordinator?.eventOccurred(with: .sendToSecondView)
	}
}

