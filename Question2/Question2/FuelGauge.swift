//
//  FuelGauge.swift
//  Question2
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class FuelGauge {
    private var fuel: Int
    private let maxFuel = 15
    
    init() {
        fuel = 0
    }
    
    func getFuel() -> Int {
        return fuel
    }
    
    func setFuel(_ fuel: Int) {
        if fuel >= 0 && fuel <= maxFuel {
            self.fuel = fuel
        }
    }
    
    func increaseFuel() {
        if fuel < maxFuel {
            fuel += 1
        } else {
            print("Car is full of fuel!")
        }
    }
    
    func decreaseFuel() {
        if fuel > 0 {
            fuel -= 1
        } else {
            print("Car ran out of fuel!")
        }
    }
}
