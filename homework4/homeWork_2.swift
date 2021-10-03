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
        name(name: "Artem")
        name2(name: "Artem")
        patronymic(patronymic: "Yuriyovich")
        nameSerName(nameSN: "ArtemZosyuk")
        mirror(mirrors: "Тапок")
        comma(numbers: "1234567890")
        privatePass(pass: "Zosyuk№3333")
        sortirovka(massiv: [9, 1, 2, 5, 1, 7, 7])
        convertStrToTranslite(string: "морДа")
        wordDa()
        antimat(slovo: "yoo luck fuck, fak you")
    }
    
    //    Задача №1 1 способ
    func name (name: String) {
        let a = Array(name)
        var count = -1
        for _ in a.startIndex...a.endIndex{
            count += 1
        }
        print(count)
    }
    
    //    Задача №1 2 способ
    func name2 (name: String) {
        print(name.count)
    }
    
    //        Задача №2
    func patronymic (patronymic: String) {
        patronymic.contains("ich") ? print("\(patronymic) contains ich") : print("\(patronymic) did not contains ich")
        patronymic.contains("na") ? print("\(patronymic) contains na") : print("\(patronymic) did not contains na")
        
    }
    
    //        Задача №3
    func nameSerName (nameSN: String) {
        var x = ""
        for i in nameSN.reversed() {
            if i.isUppercase {
                x = "\(i)"
                break
            }
        }
        let y = nameSN.split(separator: Character(x))
        if let firstName = y.first,
           let secondName = y.last {
            print("First name is: \(firstName)")
            print("Last Name is: \(x + secondName)")
        }
    }
    
    //    Задача №4
    func mirror (mirrors: String) {
        var mirror = Array(mirrors)
        var slovo = [String.Element]()
        for _ in mirror {
            if let lastletter = mirror.last   {
                slovo.append(lastletter)
            }
            mirror.removeLast()
        }
        print(String(slovo))
    }
    
    //        Задача №5
    func comma (numbers: String) {
        var chisla = Array(numbers)
        var pustoy = [String.Element]()
        func reverse () {
            pustoy.reverse()
            print(String(pustoy))
        }
        for _ in chisla {
            if let chisla2 = chisla.last {
                pustoy.append(chisla2)
            }
            chisla.removeLast()
        }
        if pustoy.count >= 4 {
            pustoy.insert(",", at: 3)
            if pustoy.count >= 8 {
                pustoy.insert(",", at: 7)
                if pustoy.count >= 12 {
                    pustoy.insert(",", at: 11)
                }
            }
            reverse()
        }
        if pustoy.count <= 3 {
            reverse()
        }
    }
    
    //           Задача № 6
    func privatePass (pass: String) {
        let massiv = Array(pass)
        var a = false
        var b = false
        var c = false
        var d = false
        for i in massiv {
            if i.isNumber {
                a = true
            }
            if i.isSymbol {
                b = true
            }
            if i.isUppercase {
                c = true
            }
            if i.isLowercase {
                d = true
            }
        }
        if (a && b && c && d) == true {
            print("The Password is excellent: 4")
        }
        else if (a || b || c || d) {
            var count = 0
            if a {
                count += 1
            }
            if b {
                count += 1
            }
            if c {
                count += 1
            }
            if d {
                count += 1
            }
            print(count)
        }
        else {
            print("Bad Password")
        }
    }
    
    //    Задача № 7
    func sortirovka (massiv: [Int] ) {
        var sortedArray = Array(massiv)
        let allSorted = Set(Array(sortedArray))
        sortedArray = Array(Set(allSorted))
        let sortedAboveIndex = sortedArray.count
        for i in 0 ..< sortedAboveIndex-1 {
            for j in 0 ..< sortedAboveIndex-i-1 {
                if (sortedArray[j] > sortedArray[j+1]) {
                    sortedArray.swapAt(j, j+1)
                }
            }
        }
        print(sortedArray)
    }
    
    //    Задача №8
    func convertStrToTranslite (string: String) {
        let newString = Array(string)
        var newSlovo = [String.Element]()
        let dictionary: [String: String] = ["щ": "shh", "ш": "sh", "ч": "ch", "ц": "cz", "ю": "yu", "я": "ya", "ё": "yo", "ж": "zh", "ъ": "``", "ы": "y'", "э": "e", "а": "a", "б": "b", "в": "v", "г": "g", "д": "d", "е": "e", "з": "z", "и": "i", "й": "j", "к": "k", "л": "l", "м": "m", "н": "n", "о": "o", "п": "p", "р": "r", "с": "s", "т": "t", "у": "u", "ф": "f", "х": "x", "ь": "`", "Щ": "SHH", "Ш": "SH", "Ч": "CH", "Ц": "CZ", "Ю": "YU", "Я": "YA", "Ё": "YO", "Ж": "ZH", "Ъ": "``", "Ы": "Y'", "Э": "E", "А": "A", "Б": "B", "В": "V", "Г": "G", "Д": "D", "Е": "E", "З": "Z", "И": "I", "Й": "J", "К": "K", "Л": "L", "М": "M", "Н": "N", "О": "O", "П": "P", "Р": "R", "С": "S", "Т": "T", "У": "U", "Ф": "F", "Х": "X", "Ь": "`"]
        for i in newString {
            newSlovo.append(contentsOf: dictionary[String(i)] ?? "")
        }
        print(String(newSlovo))
    }
    //    Задача №9
    func wordDa () {
        let massiv = ["lada", "sedan", "baklazhan"]
        var newMassiv = [String]()
        for i in massiv {
            if i.contains("da") {
                newMassiv.append(i)
            }
        }
        print(newMassiv)
        
    }
    //    Задача №10
    func antimat (slovo: String) {
        var massiv = slovo.components(separatedBy: [" ", ","])
        let dictionary = ["fuck": "****", "fak": "***"]
        for i in dictionary.keys {
            if let j = massiv.firstIndex(of: i) {
                massiv[j] = dictionary[i]!
            }
        }
        print(massiv.joined(separator: " "))
    }
}

