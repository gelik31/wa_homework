//
// SwiftRobotControlCenter.swift
// MyRobot
//
// Created by Ivan Vasilevich on 10/4/14.
// Copyright (c) 2014 Ivan Besarab. All rights reserved.
//
import UIKit
// All robot commands can be founded in GameViewController.h
class SwiftRobotControlCenter: RobotControlCenter {
    // Level name setup
    override func viewDidLoad() {
        levelName = "L4H" // Level name
        super.viewDidLoad()
    }
    override func run() {
        for _ in 0...5 {
            solveProblem()
        }
        
        func solveProblem() {
            rightMoving()
            rightTurning()
            leftMoving()
            leftTurning()
            stopLine()
        }
        
        func rightMoving() {
            put()
            while frontIsClear {
                move()
                move()
                put()
            }
        }
        
        func leftMoving() {
            while frontIsClear {
                move()
                put()
                move()
            }
        }
        
        func rightTurning() {
            while frontIsBlocked, facingRight {
                turnRight()
                if facingDown, frontIsBlocked {
                    break
                } else {
                    move()
                    turnRight() }
            }
        }
        
        func leftTurning() {
            if frontIsBlocked, facingLeft {
                turnLeft()
                move()
                turnLeft()
            }
        }
        
        func stopLine() {
            if facingDown, frontIsBlocked{
                turnRight()
            }
        }
        
        func turnLeft() {
            turnRight()
            turnRight()
            turnRight()
        }
    }
}
