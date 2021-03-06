//
//  CalculatorAPITests.swift
//  BeiraDoRioTests
//
//  Created by Tiago Chaves on 03/03/20.
//  Copyright © 2020 Tempest. All rights reserved.
//
@testable import BeiraDoRio
import XCTest

class CalculatorAPITests: XCTestCase {

    var sut: CalculatorAPI!
    
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }
    
    func testSum() {
        sut = CalculatorAPI()
        let result = sut.sum(1, with: 1)
        
        XCTAssertEqual(2, result)
    }
}
