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
        levelName = "L2H" //  Level name
        super.viewDidLoad()
    }
    
    override func run() {
        turnLeft()
        
        if noCandyPresent {
            put()
        }
        
        for _ in 0...3 {
            move()
            if noCandyPresent{
                put()
            }
        }
        
        for _ in 0...3 {
            move()
            if noCandyPresent {
                put()
            }
        }
        
        turnRight()
        
        for _ in 0...3 {
            move()
            if leftIsBlocked {
                turnRight()
                put()
            }
        }
        
        for _ in 0...7 {
            move()
            if noCandyPresent{
                put()
            }
        }
        
        turnLeft()
        mortalMove()
        
        if candyPresent {
            turnLeft()
        }
        
        for _ in 0...7 {
            move()
            if noCandyPresent{
                put()
            }
        }
        
        turnRight()
        
        for _ in 0...3 {
            move()
            if leftIsBlocked {
                turnRight()
                put()
            }
        }
        
        for _ in 0...6 {
            move()
            if noCandyPresent {
                put()
            }
        }
        
        func turnLeft() {
            turnRight()
            turnRight()
            turnRight()
        }
        
        func mortalMove() {
            move()
            move()
            move()
            move()
        }
    }
}

