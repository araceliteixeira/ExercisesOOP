//
//  Odometer.swift
//  Question2
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class Odometer {
    private var mileage: Int
    private let maxMileage = 999999
    private var fuelGauge: FuelGauge
    private let fuelEconomy = 24
    
    init() {
        mileage = 0
        fuelGauge = FuelGauge()
    }
    
    func getMileage() -> Int {
        return mileage
    }
    
    func setMileage(_ mileage: Int) {
        self.mileage = mileage
    }
    
    func increaseMileage() {
        if fuelGauge.getFuel() > 0 {
            if mileage < 999999 {
                mileage += 1
            } else {
                mileage = 0
            }
            if mileage % fuelEconomy == 0 {
                fuelGauge.decreaseFuel()
            }
        }
    }
    
    func getFuelGauge() -> FuelGauge {
        return fuelGauge
    }
    
    func setFuelGauge(_ fuelGauge: FuelGauge) {
        self.fuelGauge = fuelGauge
    }
}
