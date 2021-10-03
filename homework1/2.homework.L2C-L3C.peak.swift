//
//  SwiftRobotControlCenter.swift
//  MyRobot
//
//  Created by Ivan Vasilevich on 10/4/14.
//  Copyright (c) 2014 Ivan Besarab. All rights reserved.
//

import UIKit
//  All robot commands can be founded in GameViewController.h
class SwiftRobotControlCenter: RobotControlCenter {
    
    //  Level name setup
    override func viewDidLoad() {
        levelName = "L3C" //  Level name
        super.viewDidLoad()
    }
    
    override func run() {
        for _ in 0...11 {
            breakMistake()
        }
    }
   
    func breakMistake() {
        linePeek()
        moveToPeek()
        barrelRoll()
        moveDownToPeek()
    }
    
    func linePeek() {
        while frontIsClear {
        move()
        }
        turnRight()
    }
    
    func moveToPeek() {
        while leftIsBlocked {
         move()
        }
    }
    
    func barrelRoll() {
        turnLeft()
        move()
        turnLeft()
    }
    
    func moveDownToPeek() {
        while frontIsClear {
            move()
        }
        turnRight()
    }
    
    func turnLeft() {
        turnRight()
        turnRight()
        turnRight()
    }
    
    func comboMove() {
        move()
        move()
    }
    
}