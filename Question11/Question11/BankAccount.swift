//
//  BankAccount.swift
//  Question11
//
//  Created by Araceli Teixeira on 2017-10-10.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
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
    private var transactions: [Transaction]
    
    init () {
        number = 0
        balance = 0.0
        isSpecial = false
        limit = 0.0
        transactions = []
    }
    
    init(_ number: UInt16, _ balance: Double, _ isSpecial: Bool, _ limit: Double) {
        self.number = number
        self.balance = balance
        self.isSpecial = isSpecial
        self.limit = limit
        self.transactions = []
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
    func getTransactions() -> [Transaction] {
        return transactions
    }
    func setTransactions(_ transactions: [Transaction]) {
        self.transactions = transactions
    }
    func insertTransaction(_ transaction: Transaction) {
        if transaction.getTypeOfTransaction() == TypeOfTransaction.credit {
            balance += transaction.getValue()
        } else {
            balance -= transaction.getValue()
        }
        transactions.append(transaction)
    }
    func getStatement() -> String {
        var statement = ""
        for t in transactions {
            statement += "\(t.getDescription()) - Value $\(t.getValue()) - \(t.getTypeOfTransaction())\n"
        }
        return statement
    }
}

