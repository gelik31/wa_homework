//
//  ViewController.swift
//  iOS dev try
//
//  Created by Samurai on 05.09.2021.
//

import UIKit
//  All robot commands can be founded in GameViewController.h
class SwiftRobotControlCenter: RobotControlCenter {
    
    //  Level name setup
    override func viewDidLoad() {
        levelName = "L4H" //  "L4H/L55H"
        super.viewDidLoad()
    }
	
    override func run() {
        descentFunc()
        let a: Int = 5
        fill(Argument: a)
    }
    
    func descentFunc() {
        turnRight()
        while frontIsClear {
            move()
        }
        turnLeft()
    }

    func fill(Argument: Int) {
        var secondArgument = Argument
        for _ in 0..<Argument {
            var thirdArgument = 0
            while thirdArgument < secondArgument {
                put()
                move()
                thirdArgument += 1
                
            }
            thirdArgument = 0
            secondArgument -= 1
            turnBack()
            while frontIsClear {
                move()
            }
            turnRight()
            move()
            turnRight()
        }
    }
    
    func turnLeft() {
        turnRight()
        turnRight()
        turnRight()
    }
    
    func turnBack() {
        turnRight()
        turnRight()
    }
}
