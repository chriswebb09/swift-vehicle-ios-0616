//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Christopher Webb-Orenstein on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    let maxAltitude: Double
    var altitude: Double
    var inFlight: Bool {
        if altitude > 0 {
            return true
        }
        return false 
    }
    
    init(name: String, weight: Double, maxSpeed: Double, speed: Double, heading: Double, maxAltitude: Double, altitude: Double) {
        self.maxAltitude = maxAltitude
        self.altitude = altitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, speed: speed, heading: heading)
    }
    
    convenience init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.init(name: name, weight: weight, maxSpeed: maxSpeed, speed: 0.0, heading: 0.0, maxAltitude: maxAltitude, altitude: 0.0)
    }
    
    func takeoff() {
        self.accelerate()
        self.climb()
    }
    
    func land() {
        self.altitude = 0.0
        self.speed = 0.0
    }
    
    func climb() {
        let altitudeIncrement = self.altitude * 0.1
        self.altitude += altitudeIncrement
    }
    
    func dive() {
        let altitudeIncrement = self.maxAltitude * 0.1
        if self.altitude > altitudeIncrement {
            self.altitude -= altitudeIncrement
        }
        
    }
    
    func bankRight() {
        
    }
    
    func bankLeft() {
        
    }
}