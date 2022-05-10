//
//  ViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import Foundation

class ViewModel: NSObject {
	private var model: Model
	
	init(model: Model) {
		self.model = model
		super.init()
		
	}
	
//	public func setViewLabelA() -> String {
//		guard let label = model.labelA else { return "" }
//		return label
//	}
	
	public var getLabelA: String {
		guard let label = model.labelA else { return ""}
		return label
	}
	
	public var getLabelB: String {
		guard let label = model.labelB else { return ""}
		return label
	}
	
	public var getLabelC: String {
		guard let label = model.labelC else { return ""}
		return label
	}
}
