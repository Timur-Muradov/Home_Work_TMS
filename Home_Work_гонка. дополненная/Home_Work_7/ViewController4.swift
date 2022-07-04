//
//  ViewController4.swift
//  Home_Work_7
//
//  Created by Тимур Мурадов on 28.04.2022.
//

import UIKit

class ViewController4: UIViewController {
    
    var BlueCar: UIImageView = UIImageView()
    var viewForBlueCar: UIView = UIView()
    var RedCar: UIImageView = UIImageView()
    var viewForRedCar: UIView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Настройки"
        
        BlueCar.isUserInteractionEnabled = true
        BlueCar.image = UIImage(named: "car3")
        BlueCar.frame = CGRect(x: 0, y: 0, width: 100, height: 120)
        viewForBlueCar.frame = CGRect(x: 50, y: 50, width: 100, height: 120)
        viewForBlueCar.addSubview(BlueCar)
        view.addSubview(viewForBlueCar)
        
        RedCar.isUserInteractionEnabled = true
        RedCar.image = UIImage(named: "car2")
        RedCar.frame = CGRect(x: 0, y: 0, width: 70, height: 120)
        viewForRedCar.frame = CGRect(x: 160, y: 50, width: 70, height: 120)
        viewForRedCar.addSubview(RedCar)
        view.addSubview(viewForRedCar)
        
        let TapGestureBlueCar = UITapGestureRecognizer(target: self, action: #selector(ChoiceBlueCar))
        self.viewForBlueCar.addGestureRecognizer(TapGestureBlueCar)
        
        let TapGestureRedCar = UITapGestureRecognizer(target: self, action: #selector(ChoiceRedCar))
        self.viewForRedCar.addGestureRecognizer(TapGestureRedCar)
        
            
        }
    
    @objc func ChoiceBlueCar() {
        
      if let image = UIImage(named: "car3") {
            let imageData = image.pngData()
          UserDefaults.standard.set(imageData, forKey: "Key")
          
//          if let data: Data = UserDefaults.standard.object(forKey: "Key") as? Data {
//              let image2 = UIImage(data: data)
//              RedCar.image = image2
          //}
        }
    }
    
    
    
    @objc func ChoiceRedCar() {
        if let image = UIImage(named: "car2") {
              let imageData = image.pngData()
            UserDefaults.standard.set(imageData, forKey: "Key")
    }
}
    
}
