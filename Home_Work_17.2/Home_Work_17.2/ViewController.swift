//
//  ViewController.swift
//  Home_Work_17.2
//
//  Created by Тимур Мурадов on 16.06.2022.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func ButtonGalery() {
        
        let alert = UIAlertController(title: "Открыть галерею?", message: nil, preferredStyle: .alert)
        alert.addTextField { TextField in
            TextField.placeholder = "Введите пароль"
            TextField.isSecureTextEntry = true
        }
        
        let alertButtonOK = UIAlertAction(title: "ОК", style: .default) { _ in
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = .photoLibrary
            imagePicker.delegate = self
            self.present(imagePicker, animated: true)
        }
        
        let alertButtonCancel = UIAlertAction(title: "Отмена", style: .default) { _ in
            print("Привет")
        }
        
        self.present(alert, animated: true)
        alert.addAction(alertButtonOK)
        alert.addAction(alertButtonCancel)
        
    }

    

}

