//
//  ViewController.swift
//  Home_Work_7
//
//  Created by Тимур Мурадов on 28.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func TapOnMe1 () {
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController: FirstViewController = str.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        viewController.Title = "Hello"
        self.present(viewController, animated: true)
    }

    
}

