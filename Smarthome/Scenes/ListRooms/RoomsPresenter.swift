//
//  RoomsPresenter.swift
//  Smarthome
//
//  Created by Richard Essemiah on 31/05/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol RoomsPresentationLogic {
	func presentSomething(response: Rooms.FetchRooms.Response)
}

class RoomsPresenter: RoomsPresentationLogic {
	weak var viewController: RoomsDisplayLogic?
	
	// MARK: Do something
	
	func presentSomething(response: Rooms.FetchRooms.Response) {
		let rooms: [Rooms.FetchRooms.ViewModel] = [
			Rooms.FetchRooms.ViewModel(name: "Living room", deviceCount: 4, type: .living),
			Rooms.FetchRooms.ViewModel(name: "Chaaya room", deviceCount: 2, type: .bedroom),
			Rooms.FetchRooms.ViewModel(name: "Bedroom", deviceCount: 4, type: .bedroom),
			Rooms.FetchRooms.ViewModel(name: "Richard Office", deviceCount: 4, type: .office),
			Rooms.FetchRooms.ViewModel(name: "Chaaya room", deviceCount: 2, type: .bathroom),
			Rooms.FetchRooms.ViewModel(name: "Bedroom", deviceCount: 4, type: .dining),
			Rooms.FetchRooms.ViewModel(name: "Richard Office", deviceCount: 4, type: .office)
		]
		viewController?.displayRooms(viewModel: rooms)
	}
}
