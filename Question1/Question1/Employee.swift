//
//  Employee.swift
//  Question1
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class Employee {
    private var name: String
    private var idNumber: Int
    private var department: String
    private var position: String
    
    init(_ name: String, _ idNumber: Int, _ department: String, _ position: String) {
        self.name = name
        self.idNumber = idNumber
        self.department = department
        self.position = position
    }
    
    init(_ name: String, _ idNumber: Int) {
        self.name = name
        self.idNumber = idNumber
        department = ""
        position = ""
    }
    
    init() {
        name = ""
        idNumber = 0
        department = ""
        position = ""
    }
    
    func getName() -> String{
        return name
    }
    func getIdNumber() -> Int{
        return idNumber
    }
    func getDepartment() -> String{
        return department
    }
    func getPosition() -> String{
        return position
    }
    
    func setName(_ name: String) {
        self.name = name
    }
    func setIdNumber(_ idNumber: Int) {
        self.idNumber = idNumber
    }
    func setDepartment(_ department: String) {
        self.department = department
    }
    func setPosition(_ position: String) {
        self.position = position
    }
}
