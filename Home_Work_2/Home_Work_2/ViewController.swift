//
//  ViewController.swift
//  Home_Work_2
//
//  Created by Тимур Мурадов on 08.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       Sum(a: <#T##Int#>, b: <#T##Int#>)
       multipli(a: <#T##Int#>, b: <#T##Int#>)
       division(a: <#T##Int#>, b: <#T##Int#>)
       subtraction(a: <#T##Int#>, b: <#T##Int#>)
        
        //Не смотрите, что везде Int, можно ввести параметры Double, и все посчитается)
    }
    // Сложение
    
    func Sum(a: Int, b: Int ) {
        print("Ответ \(a + b)" )
    }
    func Sum(a: Double, b: Double) {
        print("Ответ \(a + b)")
    }
    
    // Умножение
    
    func multipli(a: Int, b: Int ) {
        print("Ответ \(a * b)" )
    }
    func multipli(a: Double, b: Double ) {
        print("Ответ \(a * b)" )
    }
    
    // Деление
    
    func division(a: Int, b: Int ) {
        print("Ответ \(a / b)" )
    }
    func division(a: Double, b: Double ) {
        print("Ответ \(a / b)" )
    }
    
    // Вычитание
    
    func subtraction(a: Int, b: Int ) {
        print("Ответ \(a - b)" )
    }
    
    func subtraction(a: Double, b: Double ) {
        print("Ответ \(a - b)" )
    }
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

