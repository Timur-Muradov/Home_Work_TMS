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
    var imageCar: UIImageView = UIImageView()
    var bush: UIImageView = UIImageView()
    var viewForBush: UIView = UIView()
    var timer: Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bush.image = UIImage(named: "Bush")
        bush.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        viewForBush.frame = CGRect(x: 30, y: 30, width: 150, height: 150)
        roadView.addSubview(viewForBush)
        viewForBush.addSubview(bush)
        
        roadView.image = UIImage(named: "road1")
        roadView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        view.addSubview(roadView)
        
        view1.frame = CGRect(x: UIScreen.main.bounds.width / 2 - 25, y: UIScreen.main.bounds.height - 200, width: 100, height: 150)
        view.addSubview(view1)
        
        imageCar.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        imageCar.image = UIImage(named: "car1")
        
        if let data: Data = UserDefaults.standard.object(forKey: "Key") as? Data {
            let image2 = UIImage(data: data)
            imageCar.image = image2
        }
        view.addSubview(imageCar)
        
        view1.addSubview(imageCar)
        
        let gesture = UIPanGestureRecognizer(target: self, action: #selector(move))
        self.view1.addGestureRecognizer(gesture)
        
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(moveBush), userInfo: nil, repeats: true)
        
    }
    
    @objc func moveBush() {
    viewForBush.frame = CGRect(x: 30, y: 30, width: 150, height: 150)
    UIView.animate(withDuration: 4) {
        self.viewForBush.frame = CGRect(x: 30, y: 1750, width: 150, height: 150)
        }
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
