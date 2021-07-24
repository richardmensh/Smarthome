//
//  RoomsModels.swift
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

enum Rooms {
	// MARK: Use cases
	enum FetchRooms {
		struct Request {}
		struct Response {}
		struct ViewModel {
			let name: String
			let deviceCount: Int
			let type: RoomType
		}
	}
	
}
