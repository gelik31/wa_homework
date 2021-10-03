//
//  ViewController.swift
//  iOS dev try
//
//  Created by Samurai on 05.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // первое задание
        pyramidaUIViewFirstTask(amountOfBoxes: 5)
        // второе задание
//        pyramidaUIViewSecodTask(pyramidLevel: 4)
        // третье задание
//        pyramidaUIViewThirdTask(pyramidLevel: 3)
    }
    
    func addBox(x: Int, y:Int) {
        let boxView = UIView()
        
        boxView.frame = CGRect(x: x, y: y, width: 50, height: 50)
        boxView.backgroundColor = .systemBlue
        
        view.addSubview(boxView)
    }
    
    func pyramidaUIViewFirstTask(amountOfBoxes: Int) {
        if amountOfBoxes == 0 {
            return
        } else {
            var x: Int = 30
            let y: Int = 130
            for _ in 1...amountOfBoxes {
                addBox(x: x, y: y)
                x += 60
            }
        }
    }
    
    func pyramidaUIViewSecodTask(pyramidLevel: Int) {
        if pyramidLevel == 0 {
            return
        } else {
            var amountOfBoxes = 1
            var x: Int = 30
            var y: Int = 130
            
            for _ in 1...pyramidLevel {
                for _ in 1...amountOfBoxes {
                    addBox(x: x, y: y)
                    x += 60
                }
                
                amountOfBoxes+=1
                x = 30
                y += 60
            }
        }
    }
    
    func pyramidaUIViewThirdTask(pyramidLevel: Int) {
        if pyramidLevel == 0 {
            return
        } else {
            var amountOfBoxes = 1
            var x: Int = 170
            var y: Int = 250
            var statX: Int = 170
            
            for _ in 1...pyramidLevel {
                for _ in 1...amountOfBoxes {
                    addBox(x: x, y: y)
                    x += 60
                }
                
                amountOfBoxes += 1
                x = statX - 30
                statX = x
                y += 60
            }
        }
    }
}
