//
//  main.swift
//  Question6
//
//  Created by Araceli Teixeira on 07/10/17.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
//

import Foundation

var continent = Continent("Europe")
continent.addCountry(Country("United Kingdom", 242495.0, 65110276))
continent.addCountry(Country("France", 640679.0, 66991000))
continent.addCountry(Country("Germany", 357168.0, 81459000))
continent.addCountry(Country("Italy", 301338.0, 60589445))

print("Total size: \(continent.getTotalSize()) km2")
print("Total population: \(continent.getTotalPopulation()) inhabitants")
print("Population density: \(continent.getPopulationDensity()) inhabitants/km2")
print("Largest population: \(continent.largestPopulationCountry().getName()) with \(continent.largestPopulationCountry().getPopulation()) inhabitants")
print("Smallest population: \(continent.smallestPopulationCountry().getName()) with \(continent.smallestPopulationCountry().getPopulation()) inhabitants")
print("Largest country in size: \(continent.largestSizeCountry().getName()) with \(continent.largestSizeCountry().getSize()) km2")
print("Smallest country in size: \(continent.smallestSizeCountry().getName()) with \(continent.smallestSizeCountry().getSize()) km2")
print("Ratio of the largest country to the smallest country: \(continent.ratioLargestCountrySmallestCountry())")
