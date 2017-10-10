//
//  Country.swift
//  Question10
//
//  Created by Araceli Teixeira on 2017-10-10.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
//

import Foundation

class Country {
    private var name: String
    private var capital: String
    private var area: Double
    private var countriesBordering: [Country]
    
    init () {
        name = ""
        capital = ""
        area = 0.0
        countriesBordering = [Country()]
    }
    
    init(_ name: String, _ capital: String, _ area: Double) {
        self.name = name
        self.capital = capital
        self.area = area
        self.countriesBordering = []
    }
    
    func getName() -> String {
        return name
    }
    func setName(_ name: String) {
        self.name = name
    }
    func getCapital() -> String {
        return capital
    }
    func setCapital(_ capital: String) {
        self.capital = capital
    }
    func getArea() -> Double {
        return area
    }
    func setArea(_ area: Double) {
        self.area = area
    }
    func getCountriesBordering() -> [Country] {
        return countriesBordering
    }
    func setCountriesBordering(_ countriesBordering: [Country]) {
        for country in countriesBordering {
            if (!isSameCountry(country)){
                self.countriesBordering.append(country)
            }
        }
    }
    
    func isSameCountry(_ country: Country) -> Bool {
        return (self.name == country.getName() && self.capital == country.getCapital())
    }
    
    func sameNeighbours(_ country: Country) -> [Country] {
        var sameNeighbours: [Country] = []
        
        for elementParameter in country.getCountriesBordering() {
            for elementInternal in getCountriesBordering() {
                if (elementInternal.isSameCountry(elementParameter)) {
                    sameNeighbours.append(elementInternal)
                }
            }
        }
        return sameNeighbours
    }
}
