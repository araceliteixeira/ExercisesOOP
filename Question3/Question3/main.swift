//
//  main.swift
//  Question3
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

var worker = ProductionWorker()
worker.setName("John Doe")
worker.setNumber("123-A")
worker.setHireDate(Date(timeIntervalSinceReferenceDate: 0.0))
worker.setShift(Shift.Day)
worker.setHourlyPayRate(12)

print("Worker \(worker.getName()), number \(worker.getNumber()), works in the shift \(worker.getShift()) for $\(worker.getHourlyPayRate()) since \(worker.getHireDate())")


