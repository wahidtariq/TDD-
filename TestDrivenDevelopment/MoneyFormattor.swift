//
//  MoneyFormattor.swift
//  TestDrivenDevelopment
//
//  Created by wahid tariq on 04/12/21.
//

import Foundation


struct MoneyFormattor{
    static let shared = MoneyFormattor()
    func string(decimal: Decimal) -> String{
        let numberFormattor = NumberFormatter()
      return  "\(numberFormattor.string(from: decimal as NSDecimalNumber) ?? "").00"
        
    }
    
    
    func returnSumOfTwoNumbers(number1: Int, number2: Int) -> Int{
        
        return number1 + number2
    }
    
    func checkForVoteAvaliblity(YourAge age: Int) -> Bool{
        
        if age < 18{
            
         return false
        }else{
            
         return true
        }
    }
    
    
}
