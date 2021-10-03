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
        levelName = "L4H" //  Level name
        super.viewDidLoad()
    }
    
    override func run() {
        
        for _ in 0...6 {
            move()
        }
        turnRight()
        go()
    }
    func go() {
        move()
        move()
        move()
        move()
        move()
    }
}

