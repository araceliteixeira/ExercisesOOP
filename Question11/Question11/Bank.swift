//
//  Bank.swift
//  Question11
//
//  Created by Francisco Freitas on 2017-10-10.
//  Copyright © 2017 FranciscoFreitas. All rights reserved.
//

import Foundation

class Bank {
    private var accounts: [BankAccount]
    
    init () {
        accounts = [BankAccount()]
    }
    
    init(_ accounts: [BankAccount]) {
        self.accounts = accounts
    }
    
    func getAccounts() -> [BankAccount] {
        return accounts
    }
    func setAccounts(_ accounts: [BankAccount]) {
        self.accounts = accounts
    }
    
    func createAccount(_ account: BankAccount) {
        accounts.append(account)
    }
    func removeAccount(_ account: BankAccount) {
        accounts = accounts.filter { $0 != account }
    }
    func deposit(_ account: BankAccount, _ value:Double) {
        if let i = accounts.index(where: { $0.getNumber() == account.getNumber() }) {
         accounts[i].setBalance(accounts[i].getBalance() + value)
        }
        
    }
    
}

