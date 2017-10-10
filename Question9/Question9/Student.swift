//
//  Student.swift
//  Question9
//
//  Created by Araceli Teixeira on 09/10/17.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
//

import Foundation

class Student {
    private let minCoopGrade = 2.8
    private var id: Int
    private var name: String
    private var country: String
    private var program: Program
    private var grades: [Double]
    
    init () {
        id = 0
        name = ""
        country = ""
        program = Program()
        grades = []
    }
    
    init(_ id: Int, _ name: String, _ country: String, _ program: Program, _ grades: [Double]) {
        self.id = id
        self.name = name
        self.country = country
        self.program = program
        self.grades = grades
    }
    
    func getId() -> Int {
        return id
    }
    func setId(_ id: Int) {
        self.id = id
    }
    func getName() -> String {
        return name
    }
    func setName(_ name: String) {
        self.name = name
    }
    func getCountry() -> String {
        return country
    }
    func setCountry(_ country: String) {
        self.country = country
    }
    func getProgram() -> Program {
        return program
    }
    func setProgram(_ program: Program) {
        self.program = program
    }
    func getGrades() -> [Double] {
        return grades
    }
    func setGrades(_ grades: [Double]) {
        self.grades = grades
    }
    
    func calculateGPA() -> Double {
        var gpa = 0.0
        for n in grades {
            gpa += n
        }
        return gpa/Double(grades.count)
    }
    
    func isAllowedCoop() -> Bool {
        return calculateGPA() >= minCoopGrade
    }
}
