//
//  RoomCollectionViewCell.swift
//  Smarthome
//
//  Created by Richard Essemiah on 31/05/2021.
//

import UIKit

class RoomCollectionViewCell: UICollectionViewCell {
	
	// MARK: Outlets
	@IBOutlet weak var roundedView: UIView!
	@IBOutlet weak var iconImageView: UIImageView!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var iconBackgroundView: UIView!
	@IBOutlet weak var amoutOfDeviceLabel: UILabel!
	
	var roomViewModel: Rooms.FetchRooms.ViewModel?
	
	override func awakeFromNib() {
        super.awakeFromNib()
		self.backgroundColor = .clear
		setupViews()
		setupLabels()
		setupImageView()
    }
	
	override func layoutSubviews() {
		super.layoutSubviews()
		iconBackgroundView.layer.cornerRadius = iconBackgroundView.frame.width / 2
	}
	
	override var isHighlighted: Bool {
		didSet {
			if isHighlighted {
				roundedView.backgroundColor = .black
				nameLabel.textColor = .white
				amoutOfDeviceLabel.textColor = .white
			} else {
				roundedView.backgroundColor = roomViewModel?.type.getColor()
				nameLabel.textColor = .black
				amoutOfDeviceLabel.textColor = .black
			}
		}
	}
	
	func config(roomViewModel: Rooms.FetchRooms.ViewModel) {
		nameLabel.text = roomViewModel.name
		iconImageView.image = roomViewModel.type.getIcon()
		roundedView.backgroundColor = roomViewModel.type.getColor()
		amoutOfDeviceLabel.text = "\(roomViewModel.deviceCount) devices"
	}
	
}

// MARK: Setup Views
private extension RoomCollectionViewCell {
	func setupLabels() {
		nameLabel.font = .camptonBold(ofSize: 15)
		nameLabel.textColor = .black
		
		amoutOfDeviceLabel.font = .camptonBook(ofSize: 15)
		amoutOfDeviceLabel.textColor = .black
	}
	
	func setupImageView () {
		iconBackgroundView.backgroundColor = .white
	}
	
	func setupViews() {
		roundedView.layer.cornerRadius = 20
		roundedView.backgroundColor = .cyan
	}
}

extension RoomCollectionViewCell: ReusableView, NibLoadableView {}
