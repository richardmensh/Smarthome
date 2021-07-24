//
//  RoomType.swift
//  Smarthome
//
//  Created by Richard Essemiah on 31/05/2021.
//

import UIKit

enum RoomType {
	case living
	case kitchen
	case office
	case bedroom
	case bathroom
	case dining
	
	func getColor() -> UIColor {
		switch self {
		case .living, .kitchen, .dining:
			return .smartGreen
		case .office, .bedroom:
			return .smartBlue
		case .bathroom:
			return .smartRed
		}
	}
	
	func getIcon() -> UIImage {
		switch self {
		case .living:
			return #imageLiteral(resourceName: "living-room")
		case .kitchen:
			return #imageLiteral(resourceName: "frying-pan")
		case .office:
			return #imageLiteral(resourceName: "printer")
		case .bedroom:
			return #imageLiteral(resourceName: "bed")
		case .bathroom:
			return #imageLiteral(resourceName: "bath")
		case .dining:
			return #imageLiteral(resourceName: "breakfast")
		}
	}
}
