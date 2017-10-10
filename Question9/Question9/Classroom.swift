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
    
    init () {
        students = []
        roomId = 0
        allocationFrom = NSDate()
        allocationTo = NSDate()
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
    func getAllocationFrom() -> NSDate {
        return allocationFrom
    }
    func setAllocationFrom(_ allocationFrom: NSDate) {
        self.allocationFrom = allocationFrom
    }
    func getAllocationTo() -> NSDate {
        return allocationTo
    }
    func setAllocationTo(_ allocationTo: NSDate) {
        self.allocationTo = allocationTo
    }
    
    func isFree(_ date: NSDate) -> Bool {
        return date.timeIntervalSince1970 < allocationFrom.timeIntervalSince1970 && date.timeIntervalSince1970 > allocationTo.timeIntervalSince1970
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
