//
//  ViewController5.swift
//  Home_Work_7
//
//  Created by Тимур Мурадов on 02.05.2022.
//

import UIKit


class User {
    let name: String
    var age: Int
    let secondName: String
    init(name: String, Age: Int, secondName: String){
        self.name = name
        self.age = Age
        self.secondName = secondName
    }
    
    func InfoUser() -> String {
        return "Имя: \(name) Возраст: \(age) Фамилия: \(secondName)"
    
}

}
class ViewController5: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    let man = User(name: "Стас", Age: 23, secondName: "Стасов")
    
    @IBAction func UserButton() {
        let story1: UIStoryboard = UIStoryboard(name: "Storyboard", bundle: nil)
        let view1: ViewController6 = story1.instantiateViewController(withIdentifier: "ViewController6") as! ViewController6
        view1.Title = man.InfoUser()
        self.present(view1, animated: true)
    }
    
}
