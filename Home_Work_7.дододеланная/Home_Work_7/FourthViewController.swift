//
//  FourthViewController.swift
//  Home_Work_7
//
//  Created by Тимур Мурадов on 28.04.2022.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet var Label3: UILabel!
    
    var Title4: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Четвертый экран"
        Label3.text = Title4
    }

    @IBAction func RaceButtonGame () {
        let str4: UIStoryboard = UIStoryboard(name: "Game", bundle: nil)
        let RaceGame1: ViewController1 = str4.instantiateViewController(withIdentifier: "ViewController1") as! ViewController1
        //self.present(RaceGame1, animated: true)
        self.navigationController?.pushViewController(RaceGame1, animated: true)
        
    }
    
}
