//
//  SexBombConfigurator.swift
//  CleanBandit
//
//  Created by ARDA TUPAL on 19/04/2017.
//  Copyright (c) 2017 ARDA TUPAL. All rights reserved.
//


import UIKit

// MARK: Connect View, Interactor, and Presenter

extension SexBombViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router.passDataToNextScene(segue: segue)
    }
}

class SexBombConfigurator {
    // MARK: Object lifecycle
    static let sharedInstance = SexBombConfigurator()
    private init() {}
    
    // MARK: Configuration
    
    func configure(viewController: SexBombViewController) {
        let router = SexBombRouter()
        router.viewController = viewController
        
        let presenter = SexBombPresenter()
        presenter.output = viewController
        
        let interactor = SexBombInteractor()
        interactor.output = presenter
        
        viewController.output = interactor
        viewController.router = router
    }
}
