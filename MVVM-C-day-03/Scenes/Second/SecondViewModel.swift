//
//  SecondViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 11/05/22.
//

import Foundation

class SecondViewModel: NSObject {
	weak var coordinator: Coordinator?
	private var viewModel: ViewModel
	
	init(viewModel: ViewModel) {
		self.viewModel = viewModel
	}
	
	public var getLabelB: String {
		guard let label = viewModel.data?.labelB else { return ""}
		return label
	}
	
	public func pushThirdVC() {
		coordinator?.eventOccurred(with: .sendToThirdView)
	}
}
