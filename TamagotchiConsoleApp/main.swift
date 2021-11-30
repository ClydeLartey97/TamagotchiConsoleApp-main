//
//  main.swift
//  TamagotchiConsoleApp
//
//  Created by Clyde Lartey on 28/11/2021.
//

import Foundation

func menu() {
    let tamagotchi = Tamagotchi()
    
    var playing = true
    
    while playing {
        print("""
1. Display stats

2. Sleep

3. Give medicine

4. Give food

5. Give drink

6. Quit
""")
        if let input = readLine() {
            
            if let choice = Int(input) {
                
                switch choice {
                case 1:
                    print(tamagotchi.returnStats())
                    
                case 2:
                    
                    tamagotchi.sleep()
                    
                case 3:
                    
                    tamagotchi.recieveMedicine()
                    
                case 4:
                    
                    tamagotchi.eat()
                    
                case 5:
                    
                    tamagotchi.drink()
                    
                case 6:
                    
                    playing = false
                    break
                    
                    
                    
                default:
                    print("Not an option")
                }
            } else {
                print("Not an option")
            }
        }
    }
}

menu()

