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
        return false
    }
    
    init(name: String, weight: Double, maxSpeed: Double, speed: Double, heading: Double, maxAltitude: Double, altitude: Double) {
        self.maxAltitude = maxAltitude
        self.altitude = altitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, speed: speed, heading: heading)
    }
    
    func takeOff() {
        
    }
    
    func land() {
        
    }
    
    func climb() {
        
    }
    
    func dive() {
        
    }
    
    func bankRight() {
        
    }
    
    func bankLeft() {
        
    }
}