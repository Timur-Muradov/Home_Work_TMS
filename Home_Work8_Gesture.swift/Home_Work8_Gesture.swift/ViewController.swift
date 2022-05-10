//
//  ViewController.swift
//  Home_Work8_Gesture.swift
//
//  Created by Тимур Мурадов on 09.05.2022.

import UIKit

class ViewController: UIViewController {
    
    //MARK: View, Label, Button
    
    var moveButton: UIButton = UIButton()
    var moveLabel: UILabel = UILabel()
    var movedView = UIView(frame: .init(x: 0, y: 0, width: 50, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(circle))
        self.view.addGestureRecognizer(tap)
    }
    
    //MARK: Functions
    
    @objc func circle(sender: UITapGestureRecognizer) {
        let point = sender.location(in: view)
        movedView.center = point
        self.view.addSubview(movedView)
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
        
//        let randomX = Int.random(in: 50..<350)
//        let randomY = Int.random(in: 50..<600)
//        movedView.layer.position = CGPoint(x: Int(randomX), y: Int(randomY))
//
//        self.view.addSubview(movedView)
//        moveButton.addTarget(self, action: #selector(backOnView), for: .touchUpInside)
        
    }
    
    //MARK: Next Screen Botton
    
    @IBAction func Button() {
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc: ViewController2 = str.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func removeView() {
        movedView.removeFromSuperview()
    }
//    @objc func backOnView() {
//        let randomX = Int.random(in: 50..<350)
//        let randomY = Int.random(in: 50..<600)
//        movedView.layer.position = CGPoint(x: Int(randomX), y: Int(randomY))
//        self.view.addSubview(movedView)
    }
    
    







