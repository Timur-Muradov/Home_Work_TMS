//
//  ViewController2.swift
//  Home_Work_7
//
//  Created by Тимур Мурадов on 28.04.2022.
//


import UIKit

class ViewController2: UIViewController {
    
    var roadView: UIImageView = UIImageView()
    var view1: UIView = UIView()
    var imageView: UIImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roadView.image = UIImage(named: "road1")
        roadView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        view.addSubview(roadView)
        
        view1.frame = CGRect(x: UIScreen.main.bounds.width / 2 - 25, y: UIScreen.main.bounds.height - 200, width: 100, height: 150)
        view.addSubview(view1)
        
        
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        imageView.image = UIImage(named: "car1")
        view.addSubview(imageView)
        
        view1.addSubview(imageView)
        
        let gesture = UIPanGestureRecognizer(target: self, action: #selector(move))
        self.view1.addGestureRecognizer(gesture)
        
    }
    
    @objc func move (recognizer: UIPanGestureRecognizer) {
        guard let view = recognizer.view else { return }
                let newPoint = recognizer.translation(in: self.view)
                view.frame.origin.x += newPoint.x
                recognizer.setTranslation(.zero, in: self.view)
        view.frame.origin.y += newPoint.y
        recognizer.setTranslation(.zero, in: self.view)
    
    
}
}
