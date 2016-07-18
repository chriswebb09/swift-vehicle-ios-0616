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
    
    convenience init (name:String , weight:Double, maxSpeed: Double) {
        self.init(name: name, weight: weight, maxSpeed: maxSpeed, speed: 0.0, heading: 0.0)
    }
    
//    convenience init(name: String, weight: Double, maxSpeed: Double) {
//        self.init(name: name, weight: weight, maxSpeed: maxSpeed)
//        self.speed = 0.0
//        self.heading = 0.0
//    }
    
    func goFast() {
        self.speed = self.maxSpeed
        
    }
    
    func halt() {
        self.speed = 0
    }
    
    func accelerate() {
        let speedIncrement: Double = maxSpeed * 0.1
        if (self.speed + speedIncrement) < maxSpeed {
            self.speed += speedIncrement
        }
    }
    
    func decelerate() {
        let speedIncrement: Double = maxSpeed * 0.1
        if self.speed > speedIncrement {
            self.speed -= speedIncrement
        }
    }
    
    func turnRight() {
        if self.heading >= 0 {
            self.heading += 80
        } else if self.heading >= 280 {
            let newIncrement = (self.heading + 80) - 360
            self.heading = 0 + newIncrement
        }
        
    }
    
    func turnLeft() {
        
    }
}
