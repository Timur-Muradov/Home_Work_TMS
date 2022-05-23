//
//  ViewController.swift
//  Home_Work_Peremeschenie
//
//  Created by Тимур Мурадов on 21.05.2022.
//

import UIKit

class ViewController: UIViewController {

    var View1: UIView = UIView()
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        View1.frame = CGRect(x: 110, y: 110, width: 150, height: 150)
        View1.backgroundColor = .blue
        self.view.addSubview(View1)
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in self.moveView1 ()
            
        })
        
    }
    func moveView1() {
        UIView.animate(withDuration: 0.5) {
            self.View1.frame = CGRect(x: Int.random(in: 0...300), y: Int.random(in: 0...600), width: 150, height: 150)
        }
        
    }

}

