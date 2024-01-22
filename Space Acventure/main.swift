//
//  main.swift
//  Space Acventure
//
//  Created by chino on 2024/01/21.
//

import Foundation

// TODO: These codes are iterative.
let mercury = Planet(name: "Mercury", diameter: 4880)
let venus   = Planet(name: "Venus",   diameter: 12_104)
let earth   = Planet(name: "Earth",   diameter: 12_756)
let mars    = Planet(name: "Mars",    diameter: 6_788)
let jupiter = Planet(name: "Jupiter", diameter: 142_984)
let saturn  = Planet(name: "Saturn",  diameter: 120_536)
let uranus  = Planet(name: "Uranus",  diameter: 51_118)
let neptune = Planet(name: "Neptune", diameter: 49_532)

var planets = [Planet]()
planets.append(mercury)
planets.append(venus)
planets.append(earth)
planets.append(mars)
planets.append(jupiter)
planets.append(saturn)
planets.append(uranus)
planets.append(neptune)

let planetarySystem = PlanetarySystem(name: "Solar system", planets: planets)
let mySpaceship = Spaceship(name: "Millennium Falcon", availablePlanetarySystem: planetarySystem)
mySpaceship.activate()
