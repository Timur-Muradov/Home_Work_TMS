//
//  ViewController1.swift
//  Home_Work_7
//
//  Created by Тимур Мурадов on 28.04.2022.
//

import UIKit

class ViewController1: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func Button1() {
        let str1: UIStoryboard = UIStoryboard(name: "Game", bundle: nil)
        let vc: ViewController2 = str1.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        //self.present(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func Button2() {
        let str2: UIStoryboard = UIStoryboard(name: "Game", bundle: nil)
        let vc: ViewController3 = str2.instantiateViewController(withIdentifier: "ViewController3")
        as! ViewController3
        self.present(vc, animated: true)
    }
    
    @IBAction func Button3() {
        let str3: UIStoryboard = UIStoryboard(name: "Game", bundle: nil)
        let vc: ViewController4 = str3.instantiateViewController(withIdentifier: "ViewController4") as! ViewController4
        self.present(vc, animated: true)
    }
    
    
    
    
}
