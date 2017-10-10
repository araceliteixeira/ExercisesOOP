//
//  main.swift
//  Question11
//
//  Created by Araceli Teixeira on 10/10/17.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
//

import Foundation

var account1 = BankAccount(1, 0.0, false, 1000.0)
var account2 = BankAccount(2, 0.0, true, 1000.0)
var account3 = BankAccount(3, 1000.0, false, 1000.0)

var bank = Bank()
bank.createAccount(account1)
bank.createAccount(account2)

bank.deposit(account1, 2000.0)
bank.transfer(account1, account2, 500.0)
bank.withdrawal(account1, 1500)
bank.transfer(account2, account1, 1000.0)
bank.deposit(account2, 500.0)

bank.withdrawal(account3, 500.0)
bank.deposit(account3, 100.0)
bank.transfer(account3, account1, 500.0)
bank.transfer(account2, account3, 100.0)

print("\nBalances:")
var accounts = [account1, account2, account3]
for a in accounts {
    print(bank.issueBalance(a))
}
print("")

print("Statements:")
for a in accounts {
    print(bank.issueStatement(a))
}
