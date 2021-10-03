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
        // 0 сравнение
        nilTask(a: 5, b: 7)
        // 1 квадрат числа
//        firstTask(a: 5, b: 2)
        // 2 куб числа
//        secondTask(a: 9, b: 3)
        // 3 от X до 0
//        fourthTask(x: 5)
        // 4 от 0 до Х
//        fifthTask(x: 5)
        // 5 от Х до -
//        upNdown(x: 10)
        // 6 соверешенное число
//        sixthTask(x: 180)
        // 7 являеться ли число совершенным
//        seventhTask(x: 31)  
    }
    
    func nilTask(a: Int, b: Int) {
        if a > b {
            print(a)
        } else if b > a {
            print(b)
        } else {
            print("\(b) = \(a)")
        }
    }

    func firstTask(a: Int, b: Int) {
        if a != 0 {
            print(a * a)
        }
    }

    func secondTask(a: Int, b: Int) {
        if a != 0 {
            print(a * a * a)
        }
    }

    func fourthTask(x: Int) {
        var timer = x
        
        while timer != -1 {
            print(timer)
            timer -= 1
        }
    }

    func fifthTask(x: Int) {
        for i in 0...x {
            print(i)
        }
    }

    func upNdown(x: Int) {
        var counter = x
        let someVal = 5
        
        for i in 0...x {
            counter -= 1
            print(someVal - i)
        }
    }
    
    func sixthTask(x: Int) {
        for i in 1..<x {
            if x % i == 0 {
                print(i)
            }
        }
    }

    func seventhTask(a: Int) {
        var count = a - 1
        var sum = 0
        while count > 0 {
            if a % count == 0 {
                print(count)
                sum += count
            }
            count -= 1
        }
    }
    if sum == a {
        print("Число являеться совершенным")
    } else {
        print("Число не являеться совершенным")
        
    }
}
