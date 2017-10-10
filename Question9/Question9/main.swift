//
//  main.swift
//  Question9
//
//  Created by Araceli Teixeira on 09/10/17.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
//

import Foundation

var program1 = Program("Computer Science")
var program2 = Program("Mobile Development")
var program3 = Program("System Analysis")

var student1 = Student(1, "Antony", "Australia", program1, [2.0, 3.5, 2.6])
var student2 = Student(2, "Barbara", "Brazil", program1, [3.0, 3.0, 3.3])
var student3 = Student(3, "Christinne", "Canada", program1, [3.0, 2.5, 2.9])
var student4 = Student(4, "Diana", "Brazil", program2, [3.0, 3.5, 2.5])
var student5 = Student(5, "Ethan", "England", program2, [3.0, 4.0, 3.5])
var student6 = Student(6, "Francis", "Canada", program2, [3.0, 3.4, 3.5])
var student7 = Student(7, "Gabrielle", "Canada", program3, [3.0, 3.5, 2.5])
var student8 = Student(8, "Helena", "Brazil", program3, [4.0, 3.0, 3.5])
var student9 = Student(9, "Igor", "Brazil", program3, [3.0, 2.2, 2.6])
var student10 = Student(9, "Javier", "Mexico", program3, [3.0, 3.1, 2.6])

var class1 = Classroom(1, "2017-09-01", "2017-12-01")
class1.addStudent(student1)
class1.addStudent(student2)
class1.addStudent(student3)
class1.addStudent(student7)
class1.addStudent(student8)
var class2 = Classroom(2, "2017-09-01", "2017-12-01")
class2.addStudent(student4)
class2.addStudent(student5)
class2.addStudent(student6)
class2.addStudent(student9)
class2.addStudent(student10)

program1.setClassrooms([class1])
program2.setClassrooms([class2])
program3.setClassrooms([class1, class2])

print("Students GPA:")
var students = [student1, student2, student3, student4, student5, student6, student7, student8, student9, student10]
for s in students {
    print("\(s.getName()): \(s.calculateGPA())")
}
print("")

var programs = [program1, program2, program3]
for p in programs {
    print("\(p.getName()) has \(p.totalStudents()) student(s) in \(p.getClassrooms().count) classroom(s)")
}
print("")

print("Is classroom ID \(class1.getRoomId()) free in 2017-08-01? \(class1.isFree("2017-08-01"))")
print("Is classroom ID \(class1.getRoomId()) free in 2017-10-01? \(class1.isFree("2017-10-01"))")
print("Is classroom ID \(class2.getRoomId()) free in 2017-12-01? \(class2.isFree("2017-12-01"))")
print("Is classroom ID \(class2.getRoomId()) free in 2017-12-10? \(class2.isFree("2017-12-10"))")
print("")

var studentsPerProgram = class1.totalStudentsPerProgram()
for s in studentsPerProgram {
    print("Classroom ID \(class1.getRoomId()) has \(s.1) student(s) in the program \(s.0.getName())")
}
studentsPerProgram = class2.totalStudentsPerProgram()
for s in studentsPerProgram {
    print("Classroom ID \(class2.getRoomId()) has \(s.1) student(s) in the program \(s.0.getName())")
}
print("")

print("Students for Coop:")
for s in students {
    print("Can \(s.getName()) submit to Coop? \(s.isAllowedCoop())")
}
