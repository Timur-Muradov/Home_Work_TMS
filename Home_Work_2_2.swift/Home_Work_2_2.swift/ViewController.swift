//
//  ViewController.swift
//  Home_Work_2_2.swift
//
//  Created by Тимур Мурадов on 08.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Задание 2. Сложение суммы чисел 4х значного числа.
        
        
        let a = 4263
        let b = a % 10
        let c = a / 10
        let d = c % 10
        let e = c / 10
        let f = e % 10
        let g = e / 10
        let SumOFnumbers = b + d + f + g
        print(SumOFnumbers)
        
        
        self.StringComparison(a: "абв", b: "ввш")
        
        // Специально закомментировал, поскольку, когда ее вызываешь, остальные не работают.
        //self.FirstCrash()
        
        
        var result = degree(num: 7, power: 2)
        print(result)
        
        
        var resultf = factorial(16)
        print(resultf)
    }
    
    // Задание 3. Сравнение строк.
    
    func StringComparison( a: String, b: String ) {
        if a > b {
            print("А больше Б")
        }
        else if a < b {
            print("Б больше А")
        }
        else {
            print("Они равны")
        }
    }
    
    // Задание 4. Циклический вызов функции. Через несколько секунд выдает ошибку: Thread 1: EXC_BAD_ACCESS. Так понимаю, что приложение сломано и все сделано правильно.
    
    func FirstCrash() { print("поломано")
        self.SecondCrash()
    }
    
    func SecondCrash() {
        self.ThirdCrash()
    }
    
    func ThirdCrash() {
        self.FirstCrash()
    }
    
    
    // Задание 5. Возведение в степень.
    
    func degree(num: Double, power: Double) -> Double {
        return pow(num, power)
        
    }
    
    
    // Задание 6. Не совсем понимаю, что тут в коде написано, но так понял, что это единая формула для вычесления факториала.
    
    func factorial(_ x: Int) -> Int {
        if x < 1 {
            return 1
        }
        return x * factorial(x-1)
    }
    
    
    
    
    
    
    
}

