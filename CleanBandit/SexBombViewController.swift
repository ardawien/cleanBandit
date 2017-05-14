//
//  SexBombViewController.swift
//  CleanBandit
//
//  Created by ARDA TUPAL on 19/04/2017.
//  Copyright (c) 2017 ARDA TUPAL. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol SexBombViewControllerOutput {
    func doSomething(request: SexBombRequest)
}

class SexBombViewController: UITableViewController,  SexBombPresenterOutput {
    var output: SexBombViewControllerOutput!
    var router: SexBombRouter!
    
    // MARK: Object lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        SexBombConfigurator.sharedInstance.configure(viewController: self)
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doSomethingOnLoad()
    }
    
    // MARK: Event handling
    
    func doSomethingOnLoad() {
        // NOTE: Ask the Interactor to do some work
        
        let request = SexBombRequest()
        output.doSomething(request: request)
    }
    
    // MARK: Display logic
    
    func displaySomething(viewModel: SexBombViewModel) {
        // NOTE: Display the result from the Presenter
        
        // nameTextField.text = viewModel.name
    }
}
