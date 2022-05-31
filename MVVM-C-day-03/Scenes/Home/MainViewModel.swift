//
//  ViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import Foundation

final class MainViewModel: NSObject {
	public var coordinator: Coordinator?
	private var service: Service?
	var name: Observable<String?> = Observable(nil)
	
	init(service: Service) {
		self.service = service
		super.init()
		
	}
	
	public var getLabelA: String? {
		return service?.getData()?.labelA
	}
	
	public func setName(name: String) {
		service?.setName(name: name)
	}
	
	public func pushSecondVC() {
		coordinator?.eventOccurred(with: .sendToSecondView)
	}
	
	var savedName: String? {
		return service?.getData()?.name
	}
}

