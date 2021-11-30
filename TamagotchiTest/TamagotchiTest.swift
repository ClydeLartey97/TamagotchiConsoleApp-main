//
//  TamagotchiTest.swift
//  TamagotchiTest
//
//  Created by Clyde Lartey on 28/11/2021.
//

import XCTest
import Foundation




class TamagotchiTest: XCTestCase {
    
    
    
    func testFeedLowersTamagotchiHungerBy1() {
        
        let tamagotchi = Tamagotchi()
        
        tamagotchi.eat()
        
        XCTAssertEqual(tamagotchi.hunger, 4)
    }
    
    
    
  
    
    
    func testFeedWhenHungerIs0AndHungerDoesNotReduce() {
        
        let tamagotchi = Tamagotchi()
    
        tamagotchi.hunger = 0
        tamagotchi.eat()
     
        XCTAssertEqual(tamagotchi.hunger, 0)
    }
    
    
    
    
       
    
    
    func testDrinkLowersThirstBy1ThirstLevel() {
        
        let tamagotchi = Tamagotchi()
        
        tamagotchi.drink()
        
        XCTAssertEqual(tamagotchi.thirst, 4)
    }
    
    
    
    
    
    
    func testDrinkDoesNotLowerThirstLevelWhenThirstLevelIs0() {
        
        let tamagotchi = Tamagotchi()
        
        tamagotchi.thirst = 0
        tamagotchi.drink()
        
        XCTAssertEqual(tamagotchi.thirst, 0)
        
    }
    

    
    func testSleepChangesIsAsleepFromFalseToTrue() {
        
        let tamagotchi = Tamagotchi()
        
        tamagotchi.sleep()
        
        XCTAssertEqual(tamagotchi.isAsleep, true)
    }
    

}

