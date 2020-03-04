//
//  CalculatorAPI.swift
//  BeiraDoRio
//
//  Created by Tiago Chaves on 03/03/20.
//  Copyright © 2020 Tempest. All rights reserved.
//

import Foundation

struct CalculatorAPI: SumWorkerProtocol {
    func sum(_ value1:Int, with value2:Int) -> Int {
        return value1 + value2
    }
}
