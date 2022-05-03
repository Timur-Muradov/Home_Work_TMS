//
//  SecondViewController.swift
//  Home_Work_7
//
//  Created by Тимур Мурадов on 28.04.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var Label1: UILabel!
    
    var Title1: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.title = "Второй экран"
        Label1.text = Title1
    }

    @IBAction func TapOnMe3 () {
        let str2: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController2: ThirdViewController = str2.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        viewController2.Title3 = "Арабская нооооочь!"
        //self.present(viewController2, animated: true)
        self.navigationController?.pushViewController(viewController2, animated: true)
    }
    
    

}

