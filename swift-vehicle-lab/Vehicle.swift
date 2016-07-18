//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Christopher Webb-Orenstein on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double
    var heading: Double
    
    init(name: String, weight: Double, maxSpeed: Double, speed: Double, heading: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        self.speed = speed
        self.heading = heading
    }
    
    convenience init() {
        
    }
    
    func goFast() {
        
    }
    
    func halt() {
        
    }
    
    func accelerate() {
        
    }
    
    func decelerate() {
        
    }
    
    func turnRight() {
        
    }
    
    func turnLeft() {
        
    }
}
