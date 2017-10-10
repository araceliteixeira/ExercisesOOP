//
//  main.swift
//  Question8
//
//  Created by Araceli Teixeira on 09/10/17.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
//

import Foundation

var line1 = Line(2.0, 3.0)
var line2 = Line(Point(0.0, 0.0), Point(1.0, 1.0))
var point = Point(0.0, 3.0)

print("\(point) belongs to line1 \(line1)? \(line1.pointBelongs(point))")
print("\(point) belongs to line2 \(line2)? \(line2.pointBelongs(point))")
print("Intersection between line1 and line2: \(String(describing: line1.intersects(line2)))")
