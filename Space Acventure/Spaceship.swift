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
    let availablePlanetarySystem = PlanetarySystem(name: "Solar system", planets: [Planet]())

    init(name: String) {
        self.name = name
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
                print("Ok, please select a planet to explore...")
                // TODO: let the user select a planet to explore
            default:
                print("Sorry, I didn't get that.")
            }
        }
    }
    
    private func responseToPrompt(_ prompt: String) -> String {
        print(prompt)
        return readLine()!
    }
}
