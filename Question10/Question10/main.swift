//
//  main.swift
//  Question10
//
//  Created by Araceli Teixeira on 2017-10-10.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
//

import Foundation

var country1 = Country("France", "Paris", 551394.0)
var country2 = Country("Germany", "Berlin", 357168.0)
var country3 = Country("Switzerland", "Bern", 41290.0)
var country4 = Country("Austria", "Vienna", 83858.0)
var country5 = Country("Italy", "Rome", 301318.0)

country1.setCountriesBordering([country2, country3, country5])
country2.setCountriesBordering([country1, country3, country4])
country3.setCountriesBordering([country1, country2, country4, country5])
country4.setCountriesBordering([country2, country3, country5])
country5.setCountriesBordering([country1, country3, country4])

print("Is \(country1.getName()) the same as \(country2.getName())? \(country1.isSameCountry(country2))")
print("")
print("Countries that border \(country3.getName()):")
for c in country3.getCountriesBordering() {
    print(c.getName())
}
print("")
print("Countries that border both \(country3.getName()) and \(country5.getName()):")
for c in country3.sameNeighbours(country5) {
    print(c.getName())
}


