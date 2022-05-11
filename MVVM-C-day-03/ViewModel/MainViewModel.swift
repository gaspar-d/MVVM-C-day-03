//
//  ViewModel.swift
//  MVVM-C-day-03
//
//  Created by Diogo Gaspar on 09/05/22.
//

import Foundation

class MainViewModel: NSObject {
	//	private var model: Model
	//	public var data: Model?
	//
	//	init(model: Model) {
	//		self.model = model
	//		super.init()
	//
	//		getData()
	//	}
	//
	//	private func getData() {
	//		data = Model(labelA: "A", labelB: "B", labelC: "C")
	//	}
	//
	//	public var getLabelA: String {
	//		guard let data = data else { return "" }
	//		return data.labelA
	//	}
	//
	//	public var getLabelB: String {
	//		guard let data = data else { return "" }
	//		return data.labelB
	//	}
	//
	//	public var getLabelC: String {
	//		guard let data = data else { return "" }
	//		return data.labelC
	//	}
	
	
	private var viewModel: ViewModel
	
	init(viewModel: ViewModel) {
		self.viewModel = viewModel
	}
	
	public var getLabelA: String {
		guard let label = viewModel.data?.labelA else { return ""}
		return label
	}
	
//	public var getLabelB: String {
//		guard let label = viewModel.data?.labelB else { return ""}
//		return label
//	}
//
//	public var getLabelC: String {
//		guard let label = viewModel.data?.labelC else { return ""}
//		return label
//	}
	
}
