//
//  ViewController3.swift
//  Home_Work8_Gesture.swift
//
//  Created by Тимур Мурадов on 10.05.2022.
//
//

import UIKit

class ViewController3: UIViewController {
    
    
    var moveView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //MARK: Element View
        
        moveView.frame = CGRect(x: (view.frame.width / 2) - 50, y: (view.frame.height / 2) - 50, width: 100, height: 100)
        moveView.backgroundColor = .cyan
        moveView.clipsToBounds = true
        moveView.layer.cornerRadius = 50
        view.addSubview(moveView)
        
    //MARK: Constants
        
        let leftGesture = UISwipeGestureRecognizer(target: self, action: #selector(TapGesture))
        leftGesture.direction = .left
        view.addGestureRecognizer(leftGesture)
        
        let rightGesture = UISwipeGestureRecognizer(target: self, action: #selector(TapGesture))
        leftGesture.direction = .right
        view.addGestureRecognizer(rightGesture)
        
        let upGesture = UISwipeGestureRecognizer(target: self, action: #selector(TapGesture))
        leftGesture.direction = .up
        view.addGestureRecognizer(upGesture)
        
        let downGesture = UISwipeGestureRecognizer(target: self, action: #selector(TapGesture))
        leftGesture.direction = .down
        view.addGestureRecognizer(downGesture)
    }
    
    //MARK: Function
    
    @objc func TapGesture(sender: UISwipeGestureRecognizer) {
        
        var centerView = moveView.center
        
        switch sender.direction {
        case.down:
            centerView.y = centerView.y + 50
        case.up:
            centerView.y = centerView.y - 50
        case.left:
            centerView.x = centerView.x - 50
        case.right:
            centerView.x = centerView.x + 50
        default:
            break
        }
        
        
        moveView.center = centerView
        
    }
    
    
    
    
}
