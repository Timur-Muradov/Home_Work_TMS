//
//  SecondViewController.swift
//  Home_Work_5.swift
//
//  Created by Тимур Мурадов on 20.04.2022.
//

import UIKit

class SecondViewController: UIViewController {

    var moveButton: UIButton = UIButton()
    var moveLabel: UILabel = UILabel()
    var movedView1: UIView = UIView()
    var movedView2: UIView = UIView()
    var movedView3: UIView = UIView()
    var movedView4: UIView = UIView()
    var movedView5: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
        movedView1.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        movedView2.frame = CGRect(x: 150, y: 150, width: 50, height: 50)
        movedView3.frame = CGRect(x: 200, y: 200, width: 50, height: 50)
        movedView4.frame = CGRect(x: 250, y: 250, width: 50, height: 50)
        movedView5.frame = CGRect(x: 300, y: 300, width: 50, height: 50)
        
        movedView1.backgroundColor = .green
        movedView2.backgroundColor = .purple
        movedView3.backgroundColor = .magenta
        movedView4.backgroundColor = .blue
        movedView5.backgroundColor = .cyan
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        moveButton.addTarget(self, action: #selector(squares), for: .touchUpInside)
        moveButton.frame = movedView1.bounds
        moveButton.setTitle("Tap", for: .normal)
        movedView1.addSubview(moveButton)
        self.view.addSubview(movedView1)
    }

    @objc func squares() {
        self.view.addSubview(movedView2)
        self.view.addSubview(movedView3)
        self.view.addSubview(movedView4)
        self.view.addSubview(movedView5)
    }

}


