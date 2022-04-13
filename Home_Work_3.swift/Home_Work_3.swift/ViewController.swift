//
//  ViewController.swift
//  Home_Work_3.swift
//
//  Created by Тимур Мурадов on 13.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        var massiv:[(Int, String)] = [(1,"Num"), (2, "Num"), (3, "Num"), (4, "Num")]

        var Newmassiv = massiv.map {element in
            return element.0 * element.0
        }
        print(Newmassiv)

        var Newmassiv2 = massiv.filter { element in
            return element.0 % 2 == 0
        }

        var Newmassiv3 = massiv.sorted { element1, element2 in
            return element1 < element2
        }

        print(Newmassiv)
        print(Newmassiv2)
        print(Newmassiv3)
    
    
    
    
    
    
    
    }


}

