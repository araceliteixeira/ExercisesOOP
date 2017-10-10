//
//  Program.swift
//  Question9
//
//  Created by Araceli Teixeira on 09/10/17.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
//

import Foundation

class Program: Equatable {
    static func ==(lhs: Program, rhs: Program) -> Bool {
        return lhs.name == rhs.name
    }
    
    private var name: String
    private var classrooms : [Classroom]
    
    init() {
        name = ""
        classrooms = []
    }
    
    init(_ name: String, _ classrooms: [Classroom]) {
        self.name = name
        self.classrooms = classrooms
    }
    
    func getName() -> String {
        return name
    }
    func setName(_ name: String) {
        self.name = name
    }
    func getClassrooms() -> [Classroom] {
        return classrooms
    }
    func setClassrooms(_ classrooms: [Classroom]) {
        self.classrooms = classrooms
    }
    
    func totalStudents() -> Int {
        var total = 0
        for c in classrooms {
            total += c.getStudents().count
        }
        return total
    }
    
    func totalClassrooms() -> Int {
        return classrooms.count
    }
}
