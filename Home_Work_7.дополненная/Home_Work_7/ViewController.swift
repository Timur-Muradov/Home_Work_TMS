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
        self.title = "Главный экран"
    }

    @IBAction func TapOnMe1 () {
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        if let viewController: FirstViewController = str.instantiateViewController(withIdentifier: "FirstViewController") as? FirstViewController {
        viewController.Title = "Hello"
        self.navigationController?.pushViewController(viewController, animated: true)
        }
        
    }

    @IBAction func TapOnMe3() {
        let str1: UIStoryboard = UIStoryboard(name: "Storyboard", bundle: nil)
        if let vc: ViewController5 = str1.instantiateViewController(withIdentifier: "ViewController5") as? ViewController5{
        self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }

    @IBAction func TapOnMe4() {
        let str1: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc: PictureViewController = str1.instantiateViewController(withIdentifier: "PictureViewController") as? PictureViewController {
        self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    
}

