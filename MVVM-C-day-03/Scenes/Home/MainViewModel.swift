//
//  ViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import Foundation

class MainViewModel: NSObject {
	
	// TODO: - Try do this using protocols 
	var coordinator: Coordinator?
	public var viewModel: ViewModel?
	
	init(viewModel: ViewModel) {
		self.viewModel = viewModel
	}
	
	public var getLabelA: String {
		guard let label = viewModel?.data?.labelA else { return ""}
		return label
	}
	
	// TODO: - All this time I just needed to put it in a method and call it on MainVC
	public func pushSecondVC() {
		coordinator?.eventOccurred(with: .sendToSecondView)
	}
}
