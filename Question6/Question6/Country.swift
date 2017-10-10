//
//  Country.swift
//  Question6
//
//  Created by Araceli Teixeira on 07/10/17.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
//

import Foundation

class Country {
    private var name: String
    private var size: Double
    private var population: Int
    
    init(_ name: String, _ size: Double, _ population: Int) {
        self.name = name
        self.size = size
        self.population = population
    }
    
    func getName() -> String {
        return name
    }
    func setName(_ name: String) {
        self.name = name
    }
    func getSize() -> Double {
        return size
    }
    func setSize(_ size: Double) {
        self.size = size
    }
    func getPopulation() -> Int {
        return population
    }
    func setPopulation(_ population: Int) {
        self.population = population
    }
}
