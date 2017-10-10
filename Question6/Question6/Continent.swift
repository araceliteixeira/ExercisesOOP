//
//  Continent.swift
//  Question6
//
//  Created by Araceli Teixeira on 07/10/17.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
//

import Foundation

class Continent {
    private var name: String
    private var countries: [Country]
    
    init(_ name: String) {
        self.name = name
        self.countries = []
    }
    
    func getName() -> String {
        return name
    }
    func setName(_ name: String) {
        self.name = name
    }
    func getCountries() -> [Country] {
        return countries
    }
    func set(_ countries: [Country]) {
        self.countries = countries
    }
    
    func addCountry(_ country: Country) {
        countries.append(country)
    }
    
    func getTotalSize() -> Double {
        var totalSize = 0.0
        for c in countries {
            totalSize += c.getSize()
        }
        return totalSize
    }
    
    func getTotalPopulation() -> Int {
        var totalPopulation = 0
        for c in countries {
            totalPopulation += c.getPopulation()
        }
        return totalPopulation
    }
    
    func getPopulationDensity() -> Double {
        return Double(getTotalPopulation())/getTotalSize()
    }
    
    func largestPopulationCountry() -> Country {
        return countries.max(by: {(a, b) -> Bool in return a.getPopulation() < b.getPopulation()})!
    }
    
    func smallestPopulationCountry() -> Country {
        return countries.min(by: {(a, b) -> Bool in return a.getPopulation() < b.getPopulation()})!
    }
    
    func largestSizeCountry() -> Country {
        return countries.max(by: {(a, b) -> Bool in return a.getSize() < b.getSize()})!
    }
    
    func smallestSizeCountry() -> Country {
        return countries.min(by: {(a, b) -> Bool in return a.getSize() < b.getSize()})!
    }
    
    func ratioLargestCountrySmallestCountry() -> Double {
        return largestSizeCountry().getSize()/smallestSizeCountry().getSize()
    }
}
