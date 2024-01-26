//
//  main.swift
//  Space Acventure
//
//  Created by chino on 2024/01/21.
//

import Foundation

let planetData = [ "Mercury" : 4_880,
                   "Venus"   : 12_104,
                   "Earth"   : 12_756,
                   "Mars"    : 6_788,
                   "Jupiter" : 142_984,
                   "Saturn"  : 120_536,
                   "Uranus"  : 51_118,
                   "Neptune" : 49_532 ]

let planets = planetData.map { Planet(name: $0, diameter: $1) }

let planetarySystem = PlanetarySystem(name: "Solar system", planets: planets)
let mySpaceship = Spaceship(name: "Millennium Falcon", availablePlanetarySystem: planetarySystem)
mySpaceship.activate()
