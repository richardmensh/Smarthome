//
//  LedLampRouter.swift
//  Smarthome
//
//  Created by Richard Essemiah on 11/06/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol LedLampRoutingLogic {
	func routeBackToRoom()
}

protocol LedLampDataPassing {
	var dataStore: LedLampDataStore? { get }
}

class LedLampRouter: NSObject, LedLampRoutingLogic, LedLampDataPassing {
	weak var viewController: LedLampViewController?
	var dataStore: LedLampDataStore?
	
	// MARK: Routing
	func routeBackToRoom() {
		viewController?.dismiss(animated: true, completion: nil)
	}
}
