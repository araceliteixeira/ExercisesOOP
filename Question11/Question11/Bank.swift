//
//  Bank.swift
//  Question11
//
//  Created by Araceli Teixeira on 2017-10-10.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
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
    func withdrawal(_ account: BankAccount, _ value: Double) {
        if let i = accounts.index(where: { $0.getNumber() == account.getNumber() }) {
            let a = accounts[i]
            if value < a.getLimit() + a.getBalance() {
                a.insertTransaction(Transaction("Withdrawal", value, TypeOfTransaction.debit))
                
            } else {
                print("Insuficient funds")
            }
        } else {
            print("Account number \(account.getNumber()) not found in this bank")
        }
    }
    func deposit(_ account: BankAccount, _ value: Double) {
        if let i = accounts.index(where: { $0.getNumber() == account.getNumber() }) {
            accounts[i].insertTransaction(Transaction("Deposit", value, TypeOfTransaction.credit))
        } else {
            print("Account number \(account.getNumber()) not found in this bank")
        }
        
    }
    func transfer(_ fromAccount: BankAccount, _ toAccount: BankAccount, _ value: Double) {
        var from: BankAccount
        var to: BankAccount
        
        if let i = accounts.index(where: { $0.getNumber() == fromAccount.getNumber() }) {
            from = accounts[i]
        } else {
            print("Account number \(fromAccount.getNumber()) not found in this bank")
            return
        }
        if let i = accounts.index(where: { $0.getNumber() == toAccount.getNumber() }) {
            to = accounts[i]
        } else {
            print("Account number \(toAccount.getNumber()) not found in this bank")
            return
        }
        if value < from.getLimit() + from.getBalance() {
            from.insertTransaction(Transaction("Transfer", value, TypeOfTransaction.debit))
            to.insertTransaction(Transaction("Transfer", value, TypeOfTransaction.credit))
        } else {
            print("Insuficient funds")
        }
    }
    
    func issueBalance(_ account: BankAccount) -> String {
        if let i = accounts.index(where: { $0.getNumber() == account.getNumber() }) {
            return "Account number \(accounts[i].getNumber()) - Current balance: $\(accounts[i].getBalance())"
        } else {
            return "Account number \(account.getNumber()) not found in this bank"
        }
        
    }
    
    func issueStatement(_ account: BankAccount) -> String {
        if let i = accounts.index(where: { $0.getNumber() == account.getNumber() }) {
            return "Account number \(accounts[i].getNumber()):\n\(accounts[i].getStatement())"
        } else {
            return "Account number \(account.getNumber()) not found in this bank"
        }
        
    }
}

