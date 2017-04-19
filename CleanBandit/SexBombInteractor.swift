//
//  SexBombInteractor.swift
//  CleanBandit
//
//  Created by ARDA TUPAL on 19/04/2017.
//  Copyright (c) 2017 ARDA TUPAL. All rights reserved.
//

import UIKit

protocol SexBombInteractorOutput {
    func presentSomething(response: SexBombResponse)
}

class SexBombInteractor: SexBombViewControllerOutput  {
    var output: SexBombInteractorOutput!
    var worker: SexBombWorker!
    
    // MARK: Business logic
    
    func doSomething(request: SexBombRequest) {
        // NOTE: Create some Worker to do the work
        
        worker = SexBombWorker()
        worker.doSomeWork()
        
        // NOTE: Pass the result to the Presenter
        
        let response = SexBombResponse()
        output.presentSomething(response: response)
    }
}
