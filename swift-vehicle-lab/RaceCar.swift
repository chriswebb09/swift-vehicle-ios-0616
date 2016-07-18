//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Christopher Webb-Orenstein on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    var driver: String
    var sponsors: [String]
    
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, speed: 0.0, heading: 0.0, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        let speedIncrement = self.maxSpeed * 0.2
        if (self.speed + speedIncrement) < self.maxSpeed {
            self.speed += speedIncrement
        }
        
    }
    
    override func decelerate() {
        let speedIncrement = self.maxSpeed * 0.2
        if self.speed > speedIncrement {
            self.speed -= speedIncrement
        }
        
    }
    
    func driftRight() {
        
    }
    
    func driftLeft() {
        
    }
}