//
//  BankAccount.swift
//  Question11
//
//  Created by Francisco Freitas on 2017-10-10.
//  Copyright © 2017 FranciscoFreitas. All rights reserved.
//

import Foundation

class BankAccount: Equatable {
    static func ==(lhs: BankAccount, rhs: BankAccount) -> Bool {
        return lhs.getNumber() == rhs.getNumber()
    }
    
    private var number: UInt16
    private var balance: Double
    private var isSpecial: Bool
    private var limit: Double
    private var numberOfTransactions: UInt16
    
    init () {
        number = 0
        balance = 0.0
        isSpecial = false
        limit = 0.0
        numberOfTransactions = 0
    }
    
    init(_ number: UInt16, _ balance: Double, _ isSpecial: Bool, _ limit: Double, _ numberOfTransactions: UInt16) {
        self.number = number
        self.balance = balance
        self.isSpecial = isSpecial
        self.limit = limit
        self.numberOfTransactions = numberOfTransactions
    }
    
    func getNumber() -> UInt16 {
        return number
    }
    func setNumber(_ number: UInt16) {
        self.number = number
    }
    func getBalance() -> Double {
        return balance
    }
    func setBalance(_ balance: Double) {
        self.balance = balance
    }
    func getIsSpecial() -> Bool {
        return isSpecial
    }
    func setIsSpecial(_ isSpecial: Bool) {
        self.isSpecial = isSpecial
    }
    func getLimit() -> Double {
        return limit
    }
    func setLimit(_ limit: Double) {
        self.limit = limit
    }
    func getNumberOfTransactions() -> UInt16 {
        return numberOfTransactions
    }
    func setNumberOfTransactions(_ numberOfTransactions: UInt16) {
        self.numberOfTransactions = numberOfTransactions
    }
}

