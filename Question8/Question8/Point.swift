//
//  Point.swift
//  Question8
//
//  Created by Araceli Teixeira on 09/10/17.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
//

import Foundation

class Point: CustomStringConvertible {
    private var x: Double
    private var y: Double
    
    var description: String { return "Point (\(x), \(y))" }
    
    init() {
        x = 0.0
        y = 0.0
    }
    
    init(_ x: Double, _ y: Double) {
        self.x = x
        self.y = y
    }
    
    func getX() -> Double {
        return x
    }
    func setX(_ x: Double) {
        self.x = x
    }
    func getY() -> Double {
        return y
    }
    func setY(_ y: Double) {
        self.y = y
    }
}
