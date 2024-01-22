//
//  PlanetarySystem.swift
//  Space Acventure
//
//  Created by chino on 2024/01/21.
//

import Foundation

struct PlanetarySystem {
    let name: String
    let planets: [Planet]

    var randomPlanet: Planet? {
        if planets.isEmpty { return nil }
        let randomIndex = Int.random(in: 0..<planets.count)
        return planets[randomIndex]
    }
}
