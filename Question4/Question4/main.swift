//
//  main.swift
//  Question4
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

var invoice = Invoice(111, "Orange Juice Tropicana", 3, 4.97)

print("Item #\(invoice.getNumber()): \(invoice.getDescription()) - Total: $\(invoice.getInvoiceAmount())")

