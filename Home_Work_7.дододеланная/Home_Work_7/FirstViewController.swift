//
//  FirstViewController.swift
//  Home_Work_7
//
//  Created by Тимур Мурадов on 28.04.2022.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet var Label: UILabel!
    
    var Title: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Первый экран"
        Label.text = Title
    }

    @IBAction func TapOnMe2 () {
        let str1: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController1: SecondViewController = str1.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        viewController1.Title1 = "Привет Мир!!!"
       // self.present(viewController1, animated: true)
        self.navigationController?.pushViewController(viewController1, animated: true)
        
    }
    
}
