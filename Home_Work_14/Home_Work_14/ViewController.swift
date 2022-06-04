//
//  ViewController.swift
//  Home_Work_14
//
//  Created by Тимур Мурадов on 01.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var menu: NSLayoutConstraint!
    @IBOutlet var square: UIView!
    let bgColor = UIView()
    @IBOutlet var view1: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        square.layer.cornerRadius = 20
        square.layer.zPosition = 1000
        self.Color()
        
        let tapGesure = UITapGestureRecognizer(target: self, action: #selector(tapHidden))
        self.view1.addGestureRecognizer(tapGesure)
        
        let gestureHidden = UISwipeGestureRecognizer(target: self, action: #selector(hiddenMenu))
        gestureHidden.direction = .left
        self.view.addGestureRecognizer(gestureHidden)
        
        let gestureShow = UISwipeGestureRecognizer(target: self, action: #selector(showMenu))
        gestureShow.direction = .right
        self.view.addGestureRecognizer(gestureShow)
    }
    
    func Color() {
        bgColor.backgroundColor = .black
        bgColor.frame = self.view.bounds
        self.view1.addSubview(bgColor)
        bgColor.alpha = 0
        self.view.layoutIfNeeded()
        bgColor.alpha = 0.5
        UIView.animate(withDuration: 2) {
            self.view.layoutIfNeeded()
        }
    }
    
    func removeColor() {
        bgColor.removeFromSuperview()
    }
    
    @objc func hiddenMenu() {
        menu.constant = -240
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
            self.removeColor()
        }
    }
    
    @objc func showMenu() {
        menu.constant = 0
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
            self.Color()
        }
    }
    
    @objc func tapHidden() {
        menu.constant = -240
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
            self.removeColor()
        }
    }
    
    @IBAction func Button1() {
        let alertVC = UIAlertController(title: "Приветствую", message: "Введите пароль", preferredStyle: .alert)
        let alertButton = UIAlertAction(title: "OK", style: .default)
        let alertButton2 = UIAlertAction(title: "Отмена", style: .default)
        alertVC.addTextField { textfield in
            textfield.placeholder = "пароль"
            textfield.isSecureTextEntry = true
        }
        self.present(alertVC, animated: true)
        alertVC.addAction(alertButton)
        alertVC.addAction(alertButton2)
    }
    
    @IBAction func Button2() {
        self.ShowError(title: "hello", messagw: "World")
    }
    
}
extension UIViewController {
    func ShowError(title: String, messagw: String) {
        let alertVC = UIAlertController(title: "Приветствую", message: "Введите пароль", preferredStyle: .alert)
        let alertOK = UIAlertAction(title: "OK", style: .default)
        let alertCancel = UIAlertAction(title: "Отмена", style: .default)
        alertVC.addTextField { textfield in
            textfield.placeholder = "пароль"
            textfield.isSecureTextEntry = true
        }
        alertVC.addAction(alertOK)
        alertVC.addAction(alertCancel)
        self.present(alertVC, animated: true)
    }
}
