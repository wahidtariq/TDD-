//
//  Budget.swift
//  TestDrivenDevelopment
//
//  Created by wahid tariq on 04/12/21.
//

import Foundation

class Budget{
    var weeklyRemaining: Decimal
    var dailyRemaining: Decimal

    
    init(total: Decimal){
        weeklyRemaining = total
        dailyRemaining = total/7
    }
    
    func addTransaction(amount: Decimal, timeStamp: Date){
        weeklyRemaining -= amount
        dailyRemaining -= amount
    }
    
}
