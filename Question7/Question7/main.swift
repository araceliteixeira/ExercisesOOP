//
//  main.swift
//  Question7
//
//  Created by Araceli Teixeira on 07/10/17.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
//

import Foundation

var grandFatherF = Person("Father's father")
var grandMotherF = Person("Father's Mother")
var grandFatherM = Person("Mother's Father")
var grandMotherM = Person("Mother's Mother")

var father = Person("Father", grandFatherF, grandMotherF)
var mother = Person("Mother", grandFatherM, grandMotherM)

var son = Person("Son", father, mother)
var daughter = Person("Daughter", father, mother)

print("Son is sibling to daughter? \(son.isSiblingTo(daughter))")
print("Father is sibling to mother? \(father.isSiblingTo(mother))")
print("\(grandFatherF.getName()) is predecessor of son? \(grandFatherF.isPredecessorOf(son))")
print("\(grandMotherF.getName()) is predecessor of son? \(grandMotherF.isPredecessorOf(son))")
print("\(grandFatherM.getName()) is predecessor of daughter? \(grandFatherM.isPredecessorOf(daughter))")
print("\(grandMotherM.getName()) is predecessor of daughter? \(grandMotherM.isPredecessorOf(daughter))")
print("Father is predecessor of mother? \(father.isPredecessorOf(mother))")

