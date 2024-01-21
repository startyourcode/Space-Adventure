//
//  Spaceship.swift
//  Space Acventure
//
//  Created by chino on 2024/01/21.
//

import Foundation

class Spaceship {
    var pilot: String? = nil
    let name: String
    var availablePlanetarySystem = PlanetarySystem(name: "Solar system", planets: [Planet]())

    init(name: String) {
        self.name = name
        
        // TODO: These codes are iterative.
        let mercury = Planet(name: "Mercury", diameter: 4880)
        let venus   = Planet(name: "Venus",   diameter: 12_104)
        let earth   = Planet(name: "Earth",   diameter: 12_756)
        let mars    = Planet(name: "Mars",    diameter: 6_788)
        let jupiter = Planet(name: "Jupiter", diameter: 142_984)
        let saturn  = Planet(name: "Saturn",  diameter: 120_536)
        let uranus  = Planet(name: "Uranus",  diameter: 51_118)
        let neptune = Planet(name: "Neptune", diameter: 49_532)

        self.availablePlanetarySystem.planets.append(mercury)
        self.availablePlanetarySystem.planets.append(venus)
        self.availablePlanetarySystem.planets.append(earth)
        self.availablePlanetarySystem.planets.append(mars)
        self.availablePlanetarySystem.planets.append(jupiter)
        self.availablePlanetarySystem.planets.append(saturn)
        self.availablePlanetarySystem.planets.append(uranus)
        self.availablePlanetarySystem.planets.append(neptune)
    }
    
    func activate() {
        displayIntroduction()
        greeting()
        determineDestination()
    }
    
    private func displayIntroduction() {
        let diameterOfEarth = 12756.274 // In km
        
        print("Here is the \(availablePlanetarySystem.name)!")
        print("There are \(availablePlanetarySystem.planets.count) planets to explore.")
        print("Diameter of The Earth is \(diameterOfEarth) km.")
    }

    private func greeting() {
        pilot = responseToPrompt("What is your name?")
        print("Hi, \(pilot!).")
    }

    private func determineDestination() {
        var decision = ""
        while !(decision == "Y" || decision == "N") {
            decision = responseToPrompt("Choose a planet to visit, randomly? (Y or N)")
            
            switch decision {
            case "Y":
                print("Ok! Exploring planet randomly...")
                // TODO: explore to random planet
            case "N":
                let planetName = responseToPrompt("OK, please select a planet to explore...")
                departure(to: planetName)
            default:
                print("Sorry, I didn't get that.")
            }
        }
    }
    
    private func departure(to planetName: String) {
        print("Arrived on \(planetName)!")
        for planet in availablePlanetarySystem.planets {
            if planetName == planet.name {
                print("The \(planet.name) has a diameter of \(planet.diameter) km.")
            }
        }
    }

    private func responseToPrompt(_ prompt: String) -> String {
        print(prompt)
        return readLine()!
    }
}
