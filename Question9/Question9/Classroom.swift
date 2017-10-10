//
//  Classroom.swift
//  Question9
//
//  Created by Araceli Teixeira on 09/10/17.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
//

import Foundation

class Classroom {
    private var students: [Student]
    private var roomId: Int
    private var allocationFrom: NSDate
    private var allocationTo: NSDate
    private let dateFormatter = DateFormatter()
    
    init () {
        students = []
        roomId = 0
        allocationFrom = NSDate()
        allocationTo = NSDate()
    }
    
    init (_ roomId: Int, _ allocationFrom: String, _ allocationTo: String) {
        students = []
        self.roomId = roomId
        dateFormatter.dateFormat = "yyyy-MM-dd"
        self.allocationFrom = dateFormatter.date(from: allocationFrom)! as NSDate
        self.allocationTo = dateFormatter.date(from: allocationTo)! as NSDate
    }
    
    func addStudent(_ student: Student) {
        students.append(student)
    }
    func getStudents() -> [Student] {
        return students
    }
    func setStudents(_ students: [Student]) {
        self.students = students
    }
    func getRoomId() -> Int {
        return roomId
    }
    func setRoomId(_ roomId: Int) {
        self.roomId = roomId
    }
    func getAllocationFrom() -> String {
        return dateFormatter.string(from: allocationFrom as Date)
    }
    func setAllocationFrom(_ allocationFrom: String) {
        self.allocationFrom = dateFormatter.date(from: allocationFrom)! as NSDate
    }
    func getAllocationTo() -> String {
        return dateFormatter.string(from: allocationTo as Date)
    }
    func setAllocationTo(_ allocationTo: String) {
        self.allocationTo = dateFormatter.date(from: allocationTo)! as NSDate
    }
    
    func isFree(_ date: String) -> Bool {
        let date = dateFormatter.date(from: date)! as NSDate
        return date.timeIntervalSince1970 < allocationFrom.timeIntervalSince1970 || date.timeIntervalSince1970 > allocationTo.timeIntervalSince1970
    }
    
    func totalStudentsPerProgram() -> [(Program, Int)] {
        var programStudents: [(Program, Int)] = []
        var programs: [Program] = []
        
        for s in students {
            if !programs.contains(s.getProgram()) {
                programs.append(s.getProgram())
            }
        }
        
        for p in programs {
            programStudents.append((p, totalStudentsInProgram(p)))
        }
    
        return programStudents
    }
    
    func totalStudentsInProgram(_ program: Program) -> Int {
        var total = 0
        
        for s in students {
            if s.getProgram() == program {
                total += 1
            }
        }
        return total
    }
}
