//
//  ViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import Foundation

class MainViewModel: NSObject {
	// TODO: - Try do this using protocols
	public var coordinator: Coordinator?
	private var viewModel: ViewModel?
	
	init(viewModel: ViewModel) {
		self.viewModel = viewModel
	}
	
//	public var getLabelA: String {
//		guard let label = viewModel?.data?.labelA else { return ""}
//		return label
//	}
//
//	public func pushSecondVC() {
//		coordinator?.eventOccurred(with: .sendToSecondView)
//	}
}

extension MainViewModel: MainViewControllerDelegate {
	public var getLabelA: String {
		guard let label = viewModel?.data?.labelA else { return ""}
		return label
	}

	public func pushSecondVC() {
		coordinator?.eventOccurred(with: .sendToSecondView)
	}
}

