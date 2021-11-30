//
//  Tamagotchi.swift
//  TamagotchiConsoleApp
//
//  Created by Clyde Lartey on 28/11/2021.
//

import Foundation

class Tamagotchi {
    var isSick: Bool
    
    var isAsleep: Bool
    
    var hunger: Int
    
    var thirst: Int
    
    
    init() {
        isSick = false
        isAsleep = false
        hunger = 5
        thirst = 5
        
    }
    
    
    
    
    
    func recieveMedicine() {
        if isSick {
            isSick = false
        }
    }
    
    func sleep() {
        if !isAsleep {
            isAsleep = true
        }
    }
    
    
    
    func eat() {
        if hunger != 0 {
            hunger -= 1
        }
    }
    
    func drink() {
        if thirst != 0 {
            thirst -= 1
        }
    }
    
    
    
    
    func returnStats() -> String {
        return """



Is your tamagotchi sick? \(isSick)

Is your tamagotchi asleep? \(isAsleep)

The tamagotchi's current hunger is \(hunger)

The tamagotchi's current thirst is \(thirst)

"""
    }
}
