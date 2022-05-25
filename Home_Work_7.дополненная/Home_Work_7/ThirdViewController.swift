//
//  ThirdViewController.swift
//  Home_Work_7
//
//  Created by Тимур Мурадов on 28.04.2022.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var Label2: UILabel!
    
    var Title3: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Третий экран"
        Label2.text = Title3
        
    }

    @IBAction func TapOnMe4 () {
        
        let str3: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        if let viewController3: FourthViewController = str3.instantiateViewController(withIdentifier: "FourthViewController") as? FourthViewController {
        viewController3.Title4 = "Волшебный востоок!"
        //self.present(viewController3, animated: true)
        self.navigationController?.pushViewController(viewController3, animated: true)
        }
    }
    

}

