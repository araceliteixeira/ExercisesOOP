//
//  main.swift
//  Question1
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

var employees: [Employee] = []
employees.append(Employee("Susan Meyers", 47899, "Accounting", "Vice President"))
employees.append(Employee("Mark Jones", 39119, "IT", "Programmer"))
employees.append(Employee("Joy Rogers", 81774, "Manufacturing", "Engineer"))

for e in employees {
    print("Name: \(e.getName())")
    print("ID Number: \(e.getIdNumber())")
    print("Department: \(e.getDepartment())")
    print("Position: \(e.getPosition())")
    print("")
}

