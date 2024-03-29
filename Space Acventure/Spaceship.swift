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
    var availablePlanetarySystem: PlanetarySystem

    var status: Status {
        if availablePlanetarySystem.planets.isEmpty {
            return .notReady
        } else {
            return .ready
        }
    }

    init(name: String, availablePlanetarySystem: PlanetarySystem) {
        self.name = name
        self.availablePlanetarySystem = availablePlanetarySystem
    }
    
    func activate() {
        displayIntroduction()
        greeting()
        if status == .ready {
            print("\(name) is ready!")
            determineDestination()
        } else {
            print("System is not ready...")
        }
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
                if let randomPlanet = availablePlanetarySystem.randomPlanet {
                    departure(to: randomPlanet.name)
                } else {
                    print("No planet in this system...")
                }
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
    
    enum Status {
        case notReady
        case standby
        case ready
    }
}
