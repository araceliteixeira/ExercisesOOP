//
//  Person.swift
//  Question7
//
//  Created by Araceli Teixeira on 07/10/17.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
//

import Foundation

class Person: Equatable {
    
    private var name = ""
    private var father: Person?
    private var mother: Person?
    
    init(_ name: String) {
        self.name = name
    }
    
    init(_ name: String, _ father: Person, _ mother: Person) {
        self.name = name
        self.father = father
        self.mother = mother
    }
    
    static func ==(lhs: Person, rhs: Person) -> Bool {
        return lhs.name == rhs.name && lhs.mother == rhs.mother
    }
    
    func isSiblingTo(_ person: Person) -> Bool {
        return father == person.father && mother == person.mother
    }
    
    func isPredecessorOf(_ person: Person) -> Bool {
        var isPredecessor = false
        if (person.father != nil) {
            isPredecessor = (self == person.father) || self.isPredecessorOf(person.father!)
        }
        if !isPredecessor && (person.mother != nil) {
            isPredecessor = (self == person.mother) || self.isPredecessorOf(person.mother!)
        }
        return isPredecessor
    }
    
    func getName() -> String {
        return name
    }
    func setName(_ name: String) {
        self.name = name
    }
    func getFather() -> Person? {
        return father
    }
    func setFather(_ father: Person) {
        self.father = father
    }
    func getMother() -> Person? {
        return mother
    }
    func setMother(_ mother: Person) {
        self.mother = mother
    }
}
