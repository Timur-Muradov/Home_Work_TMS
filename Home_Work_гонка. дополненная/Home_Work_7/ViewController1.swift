//
//  ViewController1.swift
//  Home_Work_7
//
//  Created by Тимур Мурадов on 28.04.2022.
//

import UIKit

extension UIButton {
    
    func cornerRadius (radius: Int) {
        self.layer.cornerRadius = CGFloat(radius)
        self.clipsToBounds = true
    }
}


class ViewController1: UIViewController {
    
    @IBOutlet var ButtonFirst: UIButton!
    @IBOutlet var ButtonSecond: UIButton!
    @IBOutlet var ButtonThird: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ButtonFirst.cornerRadius(radius: 30)
        ButtonSecond.cornerRadius(radius: 30)
        ButtonThird.cornerRadius(radius: 30)
        
      

    }
    
    
    @IBAction func Button1() {
        let str1: UIStoryboard = UIStoryboard(name: "Game", bundle: nil)
        if let vc: ViewController2 = str1.instantiateViewController(withIdentifier: "ViewController2") as? ViewController2 {
        //self.present(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func Button2() {
        let str2: UIStoryboard = UIStoryboard(name: "Game", bundle: nil)
        if let vc: ViewController3 = str2.instantiateViewController(withIdentifier: "ViewController3")
            as? ViewController3 {
        self.present(vc, animated: true)
        }
    }
    
    @IBAction func Button3() {
        let str3: UIStoryboard = UIStoryboard(name: "Game", bundle: nil)
        if let vc: ViewController4 = str3.instantiateViewController(withIdentifier: "ViewController4") as? ViewController4 {
        self.present(vc, animated: true)
        }
    }
    
    
    
    
}
