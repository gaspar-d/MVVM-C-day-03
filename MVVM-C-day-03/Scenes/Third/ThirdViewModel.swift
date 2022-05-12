//
//  ThirdViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 11/05/22.
//

import Foundation

class ThirdViewModel: NSObject {
	
	private var viewModel: ViewModel
	
	init(viewModel: ViewModel) {
		self.viewModel = viewModel
	}
	
	public var getLabelC: String {
		guard let label = viewModel.data?.labelC else { return ""}
		return label
	}
}
