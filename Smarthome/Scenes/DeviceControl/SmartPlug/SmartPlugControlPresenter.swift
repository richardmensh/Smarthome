//
//  SmartPlugControlPresenter.swift
//  Smarthome
//
//  Created by Richard Essemiah on 14/06/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol SmartPlugControlPresentationLogic {
	func presentSomething(response: SmartPlugControl.Something.Response)
}

class SmartPlugControlPresenter: SmartPlugControlPresentationLogic {
	weak var viewController: SmartPlugControlDisplayLogic?
	
	// MARK: Do something
	
	func presentSomething(response: SmartPlugControl.Something.Response) {
		let viewModel = SmartPlugControl.Something.ViewModel()
		viewController?.displaySomething(viewModel: viewModel)
	}
}