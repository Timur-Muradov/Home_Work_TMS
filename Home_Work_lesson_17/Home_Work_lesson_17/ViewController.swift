//
//  ViewController.swift
//  Home_Work_lesson_17
//
//  Created by Тимур Мурадов on 16.06.2022.
//

import UIKit

class ViewController: UIViewController {

    var alertView: AlertView!
    var grayView: UIView = UIView()
    var TextField: UILabel = UILabel()
    var TextField2: UILabel = UILabel()
    var TextField3: UILabel = UILabel()
    var alert: UIAlertController = UIAlertController()
    override func viewDidLoad() {
        super.viewDidLoad()

        let view = Bundle.main.loadNibNamed("AlertView", owner: nil, options: nil)?.first
        if let view = view as? AlertView {
            alertView = view
            self.view.addSubview(alertView)
        }
        
        
        grayView.frame = CGRect(x: 50, y: 350, width: 300, height: 150)
        grayView.layer.cornerRadius = 30
        grayView.backgroundColor = .gray
        self.view.addSubview(grayView)

        TextField.frame = CGRect(x: 140, y: 340, width: 150, height: 100)
        TextField.text = "Приветствую"
        self.view.addSubview(TextField)

        TextField2.frame = CGRect(x: 100, y: 400, width: 100, height: 100)
        TextField2.text = "OK"
        self.view.addSubview(TextField2)

        TextField3.frame = CGRect(x: 240, y: 400, width: 150, height: 100)
        TextField3.text = "Отмена"
        self.view.addSubview(TextField3)
    }

    
    
    
    

}

