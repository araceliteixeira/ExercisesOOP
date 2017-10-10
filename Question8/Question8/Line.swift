//
//  Line.swift
//  Question8
//
//  Created by Araceli Teixeira on 09/10/17.
//  Copyright © 2017 Araceli Teixeira. All rights reserved.
//

import Foundation

class Line: CustomStringConvertible {
    private var slope: Double
    private var linear: Double
    
    var description: String {
        if linear >= 0.0 {
            return "y = \(slope)x + \(linear)"
        } else {
            return "y = \(slope)x - \(abs(linear))"
        }
    }
    
    init(_ slope: Double, _ linear: Double) {
        self.slope = slope
        self.linear = linear
    }
    
    init(_ point1: Point, _ point2: Point) {
        slope = (point1.getY() - point2.getY())/(point1.getX() - point2.getX())
        linear = point1.getY() - slope * point1.getX()
    }
    
    func getSlope() -> Double {
        return slope
    }
    func setSlope(_ slope: Double) {
        self.slope = slope
    }
    func getLinear() -> Double {
        return linear
    }
    func setLinear(_ linear: Double) {
        self.linear = linear
    }
    
    func pointBelongs(_ point: Point) -> Bool {
        return point.getY() == slope * point.getX() + linear
    }
    
    func intersects(_ line: Line) -> Point? {
        if (slope == line.getSlope()) {
            return nil
        }
        let p = Point()
        p.setX((linear - line.getLinear())/(line.getSlope() - slope))
        p.setY(slope * p.getX() + linear)
        return p
    }
}
