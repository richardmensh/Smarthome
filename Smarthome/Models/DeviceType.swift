//
//  DeviceType.swift
//  Smarthome
//
//  Created by Richard Essemiah on 10/06/2021.
//

import UIKit

enum DeviceType: Comparable {
	case ledLamps
	case ledStrips
	case smartPlugs
	
	func getColor() -> UIColor {
		switch self {
		case .ledLamps:
			return .smartRed
		case .ledStrips:
			return .smartGreen
		case .smartPlugs:
			return .smartBlue
		}
	}
	
	func getIcon() -> UIImage {
		switch self {
		case .ledLamps:
			return #imageLiteral(resourceName: "ic-led-lamp")
		case .ledStrips:
			return #imageLiteral(resourceName: "ic-led-strip")
		case .smartPlugs:
			return #imageLiteral(resourceName: "frying-pan")
		}
	}
	
}

