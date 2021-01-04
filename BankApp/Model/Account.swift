//
//  Account.swift
//  BankApp
//
//  Created by Agustian DM on 04/01/21.
//

import Foundation

enum AccountError: Error {
    case insufficientFunds
}

struct Account {
    
    var balance: Double = 0.0
    
    mutating func deposit(_ amount: Double) {
        self.balance += amount
    }
    
    mutating func withdraw(_ amount: Double) throws {
        
        let netBalance = self.balance - amount
        if netBalance < 0 {
            throw AccountError.insufficientFunds
        } else {
            self.balance -= amount
        }
    }
}
