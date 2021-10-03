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
        
        let box = UIView()
        box.backgroundColor = .red
        box.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        box.center = view.center
        view.addSubview(box)
        
        let boxTwo = UIView()
        boxTwo.backgroundColor = .systemBlue
        boxTwo.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        boxTwo.center = view.center
        view.addSubview(boxTwo)
        
        let boxThree = UIView()
        boxThree.backgroundColor = .red
        boxThree.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        boxThree.center = view.center
        view.addSubview(boxThree)
        
        let boxFour = UIView()
        boxFour.backgroundColor = .systemBlue
        boxFour.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        boxFour.center = view.center
        view.addSubview(boxFour)
        
        view.bringSubviewToFront(boxTwo)
        view.addSubview(box)
        view.sendSubviewToBack(boxFour)
    }
}