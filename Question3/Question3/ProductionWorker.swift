//
//  ProductionWorker.swift
//  Question3
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class ProductionWorker: Employee {
    private var shift: Shift
    private var hourlyPayRate: Double
    
    override init() {
        shift = Shift.Day
        hourlyPayRate = 0.0
    }
    
    func getShift() -> Shift {
        return shift
    }
    
    func getHourlyPayRate() -> Double {
        return hourlyPayRate
    }

    func setShift(_ shift: Shift) {
        self.shift = shift
    }
    
    func setHourlyPayRate(_ hourlyPayRate: Double) {
        self.hourlyPayRate = hourlyPayRate
    }
}

enum Shift: Int {
    case Day = 1,
    Night = 2
}
