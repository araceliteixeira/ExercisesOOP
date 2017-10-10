//
//  Transaction.swift
//  Question11
//
//  Created by Francisco Freitas on 2017-10-10.
//  Copyright © 2017 FranciscoFreitas. All rights reserved.
//

import Foundation

class Transaction {
    
    enum TypeOfTransaction {
        case credit, debit
    }
    
    private var description: String
    private var value: Double
    private var typeOfTransaction: TypeOfTransaction
    
    init () {
        description = ""
        value = 0.0
        typeOfTransaction = TypeOfTransaction.debit
    }
    
    init(_ description: String, _ value: Double, _ typeOfTransaction: TypeOfTransaction) {
        self.description = description
        self.value = value
        self.typeOfTransaction = typeOfTransaction
    }
    
    func getDescription() -> String {
        return description
    }
    func setDescription(_ description: String) {
        self.description = description
    }
    func getValue() -> Double {
        return value
    }
    func setValue(_ value: Double) {
        self.value = value
    }
    func getTypeOfTransaction() -> TypeOfTransaction {
        return typeOfTransaction
    }
    func setTypeOfTransaction(_ typeOfTransaction: TypeOfTransaction) {
        self.typeOfTransaction = typeOfTransaction
    }
}
