//
//  ViewController.swift
//  lesson.3
//
//  Created by Samurai on 31.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //         Do any additional setup after loading the view.
        stringExample()
        castingExample()
        printName(name: "Artem")
        printName(name: "Dima")
        
        // множитель
        let result = multiplier(a: 2, b: 2)
        print(result)
        if result == 4 {
            print("multiplier func works good")
        } else {
            print("multiplier func failed")
        }
        
        greeting(name: "Artem")
        greeting(name: "Lera")
        greeting(name: "Lola")
        print("-----------------")
        arifmetica()
        shortHandExample()
        print("-----------------")
        counterExaple()
        print("-----------------")
        switchExamle(value: 2020)
        switchExamle(value: 2022)
        switchExamle(value: 1)
        
        addBox(x: 9, y: 10)
        addBox(x: 120, y: 120)
    }
    
    // разница между постоянным и переменным
    func letWarExample() {
        // константа (не меняються)
        let studentsAmount: Int = 11
        // переменная (меняються)
        var currentStudentsAmount = 9
        // studentsAmount = 11
        currentStudentsAmount = 6
    }
    
    // пример строчки
    func stringExample() {
        let myName = "Artem"
        print(myName)
        //        let isArtemLecturer = true
        //        let isArtemZosyukStudent = true
        let doubleEx: Double = 5
        print(doubleEx)
    }
    
    // ?
    func castingExample() {
        let appleCount = 5
        
        //        let optional = appleCount as? String
        //        print(optional)
        
        let intToString = String(appleCount)
        print(intToString)
        //        let text: String =
    }
    
    func printName(name: String) {
        print(name)
    }
    
    // множитель !!!!!!!!!!!!!!!!!!!!!!!!!!!!
    func multiplier(a: Int, b: Int) -> Int {
        return a * b
    }
    
    // вывод приветствия на экран
    func greeting(name: String) {
        print("Greeting, my dear \(name)")
    }
    
    // арифметика
    func arifmetica() {
        let firstNumber = 1
        let result: Double = Double(firstNumber) / 2.0
        print(result)
        
        let resultIsZero = result == 0
        if resultIsZero {
            print("Result is 0")
        } else {
            print("Result is not 0")
        }
    }
    
    //_____________________________
    // 1:29:00 lesson 2
    //-----------------------------
    
    // ?
    func shortHandExample() {
        var result = 0
        
        while result != 10 {
            result = result + 1
            print("Current iterration is: \(result)")
        }
        print("Now result is 10")
        
    }
    
    // ?
    func counterExaple() {
        var counter = 0
        
        for _ in 0...20 {
            counter -= 1
        }
        print(counter)
        //----------------
        let someVal = 10
        for i in 0...20 {
            print("iterration nimber is: \(someVal * i)")
        }
    }
    
    // ?
    func switchExamle(value: Int) {
        //        let intVal = 100
        //        print(Int.min, Int.max)
        
        // TRY NOT TO USE IT
        //        if value == 2020 {
        //        } else if value == 1945 {
        //            print("Victory!")
        //        } else if value == 2020 {
        //            print("COVID-19 IS HERE")
        //        } else {
        //            print("Unsupported value: \(value)")
        //        }
        // BETTER
        switch value {
        case 2020:
            print("COVID-19 IS HERE")
        case 1945:
            print("Victory!")
        case 2021:
            print("Beleniuk gold medal")
        default:
            print("Unsupported value: \(value)")
        }
    }
}