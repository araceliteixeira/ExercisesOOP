//
//  main.swift
//  Question2
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

var fuelGauge = FuelGauge()

print("Filling the car up...")
var previousFuel = 0
repeat {
    previousFuel = fuelGauge.getFuel()
    fuelGauge.increaseFuel()
} while fuelGauge.getFuel() != previousFuel

var odometer = Odometer()
odometer.setFuelGauge(fuelGauge)

print("Car running...")
repeat {
    odometer.increaseMileage()
    print("Current mileage: \(odometer.getMileage()), current fuel: \(fuelGauge.getFuel())")
} while fuelGauge.getFuel() > 0
print("Car ran out of fuel!")
