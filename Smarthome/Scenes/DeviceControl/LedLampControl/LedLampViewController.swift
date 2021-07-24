//
//  LedLampViewController.swift
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

protocol LedLampDisplayLogic: class {
	func displaySomething(viewModel: LedLamp.Something.ViewModel)
}

class LedLampViewController: UIViewController, LedLampDisplayLogic  {
	var interactor: LedLampBusinessLogic?
	var router: (NSObjectProtocol & LedLampRoutingLogic & LedLampDataPassing)?
	
	// MARK: Setup
	
	private func setup() {
		let viewController = self
		let interactor = LedLampInteractor()
		let presenter = LedLampPresenter()
		let router = LedLampRouter()
		viewController.interactor = interactor
		viewController.router = router
		interactor.presenter = presenter
		presenter.viewController = viewController
		router.viewController = viewController
		router.dataStore = interactor
	}
	
	// MARK: Routing
	@objc func dissmissViewController() {
		router?.routeBackToRoom()
	}

	// MARK: View lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setup()
		setupLabels()
		setupViews()
		setupSlider()
		doSomething()
		
		view.backgroundColor = .black.withAlphaComponent(0.7)
		view.isUserInteractionEnabled = true
		view.addGestureRecognizer( UITapGestureRecognizer(target: self, action: #selector(dissmissViewController)))
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		
		controlBackgroundView.layer.cornerRadius = controlBackgroundView.frame.width / 2
	}
	
	// MARK: Controll Led lamp
	
	
	// MARK: Controll Led Strip
	
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var iconImageView: UIImageView!
	@IBOutlet weak var controlView: UIView!
	@IBOutlet weak var controlBackgroundView: UIView!
	//@IBOutlet weak var nameTextField: UITextField!
	
	func doSomething() {
		let request = LedLamp.Something.Request()
		interactor?.doSomething(request: request)
	}
	
	func displaySomething(viewModel: LedLamp.Something.ViewModel) {
		//nameTextField.text = viewModel.name
	}
}

// MARK: View setup
private extension LedLampViewController {
	func setupLabels() {
		nameLabel.text = "Light"
		nameLabel.font = .camptonExtraBold(ofSize: 30)
		nameLabel.textColor = .white
	}
	
	func setupViews() {
		controlBackgroundView.backgroundColor = .black.withAlphaComponent(0.7)
		controlBackgroundView.clipsToBounds = true
	}
	
	func setupSlider() {
		
	}
}