//
//  BudgetTests.swift
//  TestDrivenDevelopmentTests
//
//  Created by wahid tariq on 04/12/21.
//

import XCTest
@testable import TestDrivenDevelopment

class BudgetTests: XCTestCase {

    func testBudgetContainsWeeklyRemaining(){
        
        let amounts: [Decimal] = [1,123,0,5]
        for amount in amounts{
            let budget = Budget(total: amount)
            XCTAssertEqual(budget.weeklyRemaining, amount)
        }
    }
    
    func testBudgetContainsDailyRemaining(){
        
        let amounts: [Decimal] = [0,7,14,70 ]
        for amount in amounts{
            let budget = Budget(total: amount)
            XCTAssertEqual(budget.dailyRemaining, amount/7, "dailyRemaining is not \(amount/7)")
        }
        
    }
    
    func testTransactionDeductsFromWeeklyRemaining(){
        let budget = Budget(total: 10)
        budget.addTransaction(amount: 0, timeStamp: Date())
        XCTAssertEqual(budget.weeklyRemaining, 10)
        
        budget.addTransaction(amount: 1, timeStamp: Date())
        XCTAssertEqual(budget.weeklyRemaining, 9)
        
    }
    
    func testTransactionDeductsFromDailyRemaining(){
        
        var budget = Budget(total: 70)
        budget.addTransaction(amount: 0, timeStamp: Date())
        XCTAssertEqual(budget.dailyRemaining, 10)
        
        budget = Budget(total: 70)
        budget.addTransaction(amount: 1, timeStamp: Date())
        XCTAssertEqual(budget.dailyRemaining, 9)
        
        budget = Budget(total: 70)
        budget.addTransaction(amount: 2, timeStamp: Date())
        XCTAssertEqual(budget.dailyRemaining, 8)
        
    }
    
}

