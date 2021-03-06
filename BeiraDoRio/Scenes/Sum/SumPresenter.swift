//
//  SumPresenter.swift
//  BeiraDoRio
//
//  Created by Tiago Chaves on 03/03/20.
//  Copyright (c) 2020 Tempest. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol SumPresentationLogic {
    func formatResult(result: Int)
}

class SumPresenter: SumPresentationLogic {
    weak var viewController: SumDisplayLogic?
    
    // MARK: - Do something
    func formatResult(result: Int) {
        
        if result == -1 {
            viewController?.displayError()
        } else {
            viewController?.displayResult("\(result)")
        }
    }
}
