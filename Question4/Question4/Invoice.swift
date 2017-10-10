//
//  Invoice.swift
//  Question4
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class Invoice {
    private var number: Int
    private var description: String
    private var quantity: Int
    private var price: Double
    
    init() {
        number = 0
        description = ""
        quantity = 0
        price = 0.0
    }
    
    init(_ number: Int, _ description: String, _ quantity: Int, _ price: Double) {
        self.number = number
        self.description = description
        if quantity < 0 {
            self.quantity = 0
        } else {
            self.quantity = quantity
        }
        if price < 0.0 {
            self.price = 0.0
        } else {
            self.price = price
        }
    }
    
    func getNumber() -> Int {
        return number
    }
    func setNumber(_ number: Int) {
        self.number = number
    }
    func getDescription() -> String {
        return description
    }
    func setDescription(_ description: String) {
        self.description = description
    }
    func getQuantity() -> Int {
        return quantity
    }
    func setQuantity(_ quantity: Int) {
        if quantity < 0 {
            self.quantity = 0
        } else {
            self.quantity = quantity
        }
    }
    func getPrice() -> Double {
        return price
    }
    func setPrice(_ price: Double) {
        if price < 0.0 {
            self.price = 0.0
        } else {
            self.price = price
        }
    }
    
    func getInvoiceAmount() -> Double {
        return Double(quantity)*price
    }
}
