//
//  ViewController.swift
//  iOS dev try
//
//  Created by Samurai on 29.09.2021.
//

import UIKit

class CoffeeMachine {
    
    var coffeeTank = 100
    var waterTank = 250
    var milkTank = 0
    var garbageTank = 0
    var textField = ""
    
    
    enum drinkNeeded {
        case esspresso, americano, latte, capuchino
        
        var coffeeNeeded: Int {
            switch self {
            case .esspresso:
                return 10
            case .americano:
                return 20
            case .latte:
                return 10
            case .capuchino:
                return 10
            }
        }
        
        var milkNeeded: Int {
            switch self {
            case .esspresso:
                return 0
            case .americano:
                return 0
            case .latte:
                return 300
            case .capuchino:
                return 200
            }
        }
        
        var waterNeeded: Int {
            switch self {
            case .esspresso:
                return 35
            case .americano:
                return 120
            case .latte:
                return 35
            case .capuchino:
                return 35
            }
        }
        
        var garbageNeeded: Int {
            switch self {
            case .esspresso:
                return 200
            case .americano:
                return 200
            case .latte:
                return 300
            case .capuchino:
                return 300
            }
        }
    }
    
    func addCoffee() {
        coffeeTank += 100
        print("CoffeTank is full")
        textField = "CoffeTank is full"
    }
    
    func addWater() {
        waterTank += 250
        print("WaterTank is full")
        textField = "WaterTank is full"
    }
    
    func addMilk() {
        milkTank += 1000
        print("MilkTank is full")
        textField = "MilkTank is full"
    }
    
    func clearGarbage() {
        garbageTank = 0
        print("GarbageTank is cleared")
        textField = "GarbageTank is cleared"
    }
    
    func makeDrink (drink: drinkNeeded) {
        if coffeeTank >= drink.coffeeNeeded {
            if waterTank >= drink.waterNeeded {
                if milkTank >= drink.milkNeeded {
                    if garbageTank <= 1000 {
                        coffeeTank -= drink.coffeeNeeded
                        waterTank -= drink.waterNeeded
                        milkTank -= drink.milkNeeded
                        garbageTank += drink.garbageNeeded
                        print("Here is your \(drink) please.")
                        textField = "Here is your \(drink) please."
                    } else {
                        print("Clean the garbageTank please")
                        textField = "Clean the garbageTank please"
                    }
                } else {
                    print("Need more milk, fill it up!")
                    textField = "Need more milk, fill it up!"
                }
            } else {
                print("Need more water, fill it up!")
                textField = "Need more water, fill it up!"
            }
        } else {
            print("Need more coffee, add it!")
            textField = "Need more coffee, add it!"
        }
    }
}
