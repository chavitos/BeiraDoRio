//
//  SumInteractor.swift
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

protocol SumBusinessLogic {
    func calcSum(value1: String, value2: String)
}

protocol SumDataStore {
    //var name: String { get set }
}

class SumInteractor: SumBusinessLogic, SumDataStore {
    var presenter: SumPresentationLogic?
    var worker: SumWorkerProtocol = CalculatorAPI()
    //var name: String = ""
    
    // MARK: - Do something
    func calcSum(value1: String, value2: String) {
        guard let value1 = Int(value1), let value2 = Int(value2) else {
            presenter?.formatResult(result: -1)
            return
        }
        
        let result = worker.sum(value1, with: value2)
        presenter?.formatResult(result: result)
    }
}
