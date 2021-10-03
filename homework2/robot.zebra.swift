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
        levelName = "L4H" //  L4H/L55H/L555H/L666H – iPad air/pro 12.9
        super.viewDidLoad()
    }
	
    override func run() {
        turnRight()
        var a = 0
        fillLineAndMoveBack()
        a += 1
        move()
        while frontIsClear {
            if a % 2 == 0 {
                turnLeft()
                fillLineAndMoveBack()
                move()
            } else {
               move()
            
            }
            a += 1
        }
    }

    func fillLineAndMoveBack() {
        put()
        while frontIsClear {
            move()
            put()
        }
        turnBack()
        while frontIsClear {
            move()
        }
        turnLeft()
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
