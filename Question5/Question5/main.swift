//
//  main.swift
//  Question5
//
//  Created by Araceli Teixeira on 07/10/17.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
//

import Foundation

var emp1 = Employee("Antony", "Stuart", 10000.0)
var emp2 = Employee("Bruce", "Johnson", 7500.0)

print("Annual salary:")
print("\(emp1.getFirstName()) \(emp1.getSurname()): $\(emp1.getSalary()*12)")
print("\(emp2.getFirstName()) \(emp2.getSurname()): $\(emp2.getSalary()*12)")
print("")
emp1.setSalary(emp1.getSalary()*1.10)
emp2.setSalary(emp2.getSalary()*1.10)

print("Annual salary after 10% raise:")
print("\(emp1.getFirstName()) \(emp1.getSurname()): $\(emp1.getSalary()*12)")
print("\(emp2.getFirstName()) \(emp2.getSurname()): $\(emp2.getSalary()*12)")

