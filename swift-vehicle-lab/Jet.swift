//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Christopher Webb-Orenstein on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    override init(name: String, weight: Double, maxSpeed: Double, speed: Double, heading: Double, maxAltitude: Double, altitude: Double) {
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, speed: speed, heading: heading, maxAltitude: maxAltitude, altitude: altitude)
    }
    
    convenience init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.init(name: name, weight: weight, maxSpeed: maxSpeed, speed: 0.0, heading: 0.0, maxAltitude: maxAltitude, altitude: 0.0)
    }
    
    func afterBurner() {
        
    }
    
}