//
//  main.swift
//  Space Acventure
//
//  Created by chino on 2024/01/21.
//

import Foundation

let numberOfPlanets = 8
let diameterOfEarth = 12756.274

print("Here is the solar system!")
print("There are \(numberOfPlanets) planets to explore.")
print("Diameter of The Earth is \(diameterOfEarth) km.")

print("What is your name?")
let yourName = readLine()!
print("Hi, \(yourName).")

print("Choose a planet to explore, randomly? (Y or N)")
var decision = ""

while !(decision == "Y" || decision == "N") {
    decision = readLine()!
    
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

