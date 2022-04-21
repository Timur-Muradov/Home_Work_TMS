//
//  FirstViewController.swift
//  Home_Work_5.swift
//
//  Created by Тимур Мурадов on 20.04.2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    var moveButton: UIButton = UIButton()
    var moveLabel: UILabel = UILabel()
    var movedView: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        movedView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        movedView.backgroundColor = .orange
        movedView.layer.cornerRadius = 50
        
        moveButton.addTarget(self, action: #selector(removeView), for: .touchUpInside)
        moveButton.frame = movedView.bounds
        moveButton.setTitle("Tap On Me", for: .normal)
        movedView.addSubview(moveButton)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let randomX = Int.random(in: 50..<350)
        let randomY = Int.random(in: 50..<600)
        movedView.layer.position = CGPoint(x: Int(randomX), y: Int(randomY))
        
        self.view.addSubview(movedView)
        moveButton.addTarget(self, action: #selector(backOnView), for: .touchUpInside)
        
    }
    
    @objc func removeView() {
        movedView.removeFromSuperview()
    }
    @objc func backOnView() {
        let randomX = Int.random(in: 50..<350)
        let randomY = Int.random(in: 50..<600)
        movedView.layer.position = CGPoint(x: Int(randomX), y: Int(randomY))
        self.view.addSubview(movedView)
    }
    
    
}






