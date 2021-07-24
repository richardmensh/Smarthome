//
//  DeviceCollectionViewCell.swift
//  Smarthome
//
//  Created by Richard Essemiah on 09/06/2021.
//

import UIKit

class DeviceCollectionViewCell: UICollectionViewCell {

	// MARK: Outlets
	@IBOutlet weak var roundedView: UIView!
	@IBOutlet weak var iconImageView: UIImageView!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var iconBackgroundView: UIView!
	@IBOutlet weak var stateLabel: UILabel!
	
	var deviceViewModel: SingleRoom.FetchDevice.ViewModel?
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
		self.backgroundColor = .clear
		setupViews()
		setupLabels()
		setupImageView()
    }
	
	override func layoutIfNeeded() {
		super.layoutIfNeeded()
		
		roundedView.layer.cornerRadius = 20
	}
	override func layoutSubviews() {
		super.layoutSubviews()
		iconBackgroundView.layer.cornerRadius = iconBackgroundView.frame.height / 2
	}
	
	override var isHighlighted: Bool {
		didSet {
			if isHighlighted {
				roundedView.backgroundColor = .black
				nameLabel.textColor = .white
				stateLabel.textColor = .white
			} else {
				roundedView.backgroundColor = deviceViewModel?.type.getColor()
				nameLabel.textColor = .black
				stateLabel.textColor = .black
			}
		}
	}
	
	func config(deviceViewModel:  SingleRoom.FetchDevice.ViewModel) {
		nameLabel.text = deviceViewModel.name
		iconImageView.image = deviceViewModel.type.getIcon()
		roundedView.backgroundColor = deviceViewModel.type.getColor()
		stateLabel.text = deviceViewModel.deviceState
	}

}


// MARK: Setup Views
private extension DeviceCollectionViewCell {
	func setupLabels() {
		nameLabel.font = .camptonBold(ofSize: 15)
		nameLabel.textColor = .black
		
		stateLabel.font = .camptonBook(ofSize: 15)
		stateLabel.textColor = .black
	}
	
	func setupImageView () {
		iconBackgroundView.backgroundColor = .white
	}
	
	func setupViews() {
		roundedView.layer.cornerRadius = 20
	}
}

extension DeviceCollectionViewCell: ReusableView, NibLoadableView {}
