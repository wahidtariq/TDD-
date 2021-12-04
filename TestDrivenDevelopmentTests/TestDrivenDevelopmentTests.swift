//
//  TestDrivenDevelopmentTests.swift
//  TestDrivenDevelopmentTests
//
//  Created by wahid tariq on 04/12/21.
//

import XCTest
@testable import TestDrivenDevelopment

class TestDrivenDevelopmentTests: XCTestCase {
    
    let formattor = MoneyFormattor()
    
    func testMoneyFormattor(){

        XCTAssertEqual(MoneyFormattor.shared.string(decimal: 0), "0.00")
        XCTAssertEqual(MoneyFormattor.shared.string(decimal: 1), "1.00")
        
    }
    
    func testCheckForTwoNumbersAreEqual(){
        XCTAssertEqual(formattor.returnSumOfTwoNumbers(number1: 21, number2: 21), 42) // True
        XCTAssertEqual(formattor.returnSumOfTwoNumbers(number1: 12, number2: 11), 22) // False
    }
    
    func testCheckForVoteAvaliablity(){
        XCTAssertEqual(formattor.checkForVoteAvaliblity(YourAge: 17), true)  // False
        XCTAssertEqual(formattor.checkForVoteAvaliblity(YourAge: 19), true)  // True
    }

}
