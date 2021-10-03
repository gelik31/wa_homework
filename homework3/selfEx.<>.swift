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
        // Do any additional setup after loading the view.
        firstTask(a: 5, b: 7)
    }
    
    func firstTask(a: Int, b: Int) {
        if a > b {
            print(a)
        } else if b > a {
            print(b)
        } else {
            print("\(b) = \(a)")
        }
    }
}