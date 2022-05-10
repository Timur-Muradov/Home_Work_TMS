//
//  ViewController2.swift
//  Home_Work8_Gesture.swift
//
//  Created by Тимур Мурадов on 09.05.2022.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    //MARK: Constants
        
        let gesture = UIPanGestureRecognizer(target: self, action: #selector(moveSquare))
        square.addGestureRecognizer(gesture)
    }
    
    
    //MARK: Functions
    
    @objc func moveSquare(recognizer: UIPanGestureRecognizer) {
        
        if recognizer.state == .began {
            print("Жест начался")
            
        } else if recognizer.state == .changed {
            
            let translation = recognizer.translation(in: self.view)
            let newX = square.center.x + translation.x
            let newY = square.center.y + translation.y
            
            square.center = CGPoint(x: newX, y: newY)
            recognizer.setTranslation(CGPoint.zero, in: self.view)
            
        } else if recognizer.state == .ended {
            print("Жест окончен")
        }
            
    }
    
    //MARK: Next Screen Botton
    
    @IBAction func Button2() {
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc: ViewController3 = str.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBOutlet weak var square: UIView!
    
    
}


