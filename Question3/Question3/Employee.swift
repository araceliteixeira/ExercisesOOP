//
//  Employee.swift
//  Question3
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class Employee {
    private var name: String
    private var number: String
    private var hireDate: Date
    private let numberFormat = "\\b([0-9]{3})-[A-M]{1}\\b"
    
    init() {
        name = ""
        number = ""
        hireDate = Date()
    }
    
    func getName() -> String {
        return name
    }
    func getNumber() -> String {
        return number
    }
    func getHireDate() -> Date {
        return hireDate
    }
    func setName(_ name: String) {
        self.name = name
    }
    func setNumber(_ number: String) {
        let regex = try! NSRegularExpression(pattern: numberFormat, options: [])
        let matches = regex.matches(in: number, options: [], range: NSRange(location: 0, length: number.characters.count))
        if number.characters.count == 5 && matches.count == 1 {
            self.number = number
        }
        
    }
    func setHireDate(_ hireDate: Date) {
        self.hireDate = hireDate
    }
}
