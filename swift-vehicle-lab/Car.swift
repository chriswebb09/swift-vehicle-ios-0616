//
//  Car.swift
//  swift-vehicle-lab
//
//  Created by Christopher Webb-Orenstein on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Car: Vehicle {
    let transmission: String
    let cylinders: Int
    let milesPerGallon: Double
    
    init(name: String, weight: Double, maxSpeed: Double, speed: Double, heading: Double, transmission: String, cylinders: Int, milesPerGallon: Double) {
        self.transmission = transmission
        self.cylinders = cylinders
        self.milesPerGallon = milesPerGallon
        super.init(name:name, weight:weight, maxSpeed:maxSpeed, speed:speed, heading:heading)
    }
    
    convenience init (name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double) {
        self.init(name:name, weight: weight, maxSpeed: maxSpeed, speed: 0.0, heading: 0.0, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
//    convenience init(name:String , weight:Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double) {
//        self.init(name: name, weight: weight, maxSpeed: maxSpeed, speed: 0.0, heading: 0.0, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
//    }
    
    
    func drive() {
        self.accelerate()
    }
    
    func brake() {
        self.decelerate()
    }
}