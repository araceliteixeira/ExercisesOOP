//
//  Employee.swift
//  Question5
//
//  Created by Araceli Teixeira on 07/10/17.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
//

import Foundation

class Employee {
    private var firstName: String
    private var surname: String
    private var salary: Double
    
    init(_ firstName: String, _ surname: String, _ salary: Double) {
        self.firstName = firstName
        self.surname = surname
        if salary < 0.0 {
            self.salary = 0.0
        } else {
            self.salary = salary
        }
    }
    
    func getFirstName() -> String {
        return firstName
    }
    
    func setFirstName(_ firstName: String) {
        self.firstName = firstName
    }
    
    func getSurname() -> String {
    return surname
    }
    
    func setSurname(_ surname: String) {
        self.surname = surname
    }
    
    func getSalary() -> Double {
    return salary
    }
    
    func setSalary(_ salary: Double) {
        if salary < 0.0 {
            self.salary = 0.0
        } else {
            self.salary = salary
        }
    }
}
