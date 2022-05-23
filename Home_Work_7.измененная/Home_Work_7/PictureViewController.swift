//
//  PictureViewController.swift
//  Home_Work_7
//
//  Created by Тимур Мурадов on 23.05.2022.
//

import UIKit

class PictureViewController: UIViewController {

    var imageView: UIImageView = UIImageView()
    var images = [UIImage(named: "Pic1"), UIImage(named: "Pic2"), UIImage(named: "Pic3")]
    var currentIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Galery()
    }
   
    func Galery() {
        imageView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 300)
        imageView.image = images[currentIndex]
        self.view.addSubview(imageView)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(TapSwipe))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(TapSwipe))
        swipeRight.direction = .left
        self.view.addGestureRecognizer(swipeRight)
    }
    
    @objc func TapSwipe(sender: UISwipeGestureRecognizer) {
        switch sender.direction {
        case .left:
            UIView.animate(withDuration: 1) {
                self.imageView.frame = CGRect(x: (-1) * self.view.frame.width, y: 0, width: self.view.frame.width, height: 300)
            } completion: { [self] animation in
                
                self.currentIndex = currentIndex + 1
                if self.currentIndex >= self.images.count {
                    self.currentIndex = 0
                }
                self.imageView.image = self.images[self.currentIndex]
                self.imageView.frame = CGRect(x: (-1) * self.view.frame.width, y: 0, width: self.view.frame.width, height: 300)
                UIView.animate(withDuration: 1) {
                    self.imageView.frame = CGRect(x: (-1) * self.view.frame.width, y: 0, width: self.view.frame.width, height: 300)
                }
            }
            
            break
        case .right:
            
            
            break
        default: break
        }
    }
}
