//
//  ViewController.swift
//  Home_Work_20.swift
//
//  Created by Тимур Мурадов on 02.07.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //    func numberOfSections(in tableView: UITableView) -> Int {
    //        return 3
    //    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
                if indexPath.row == 0 {
    
                    if let cell = tableView.dequeueReusableCell(withIdentifier: "NameButtonTableCell", for: indexPath) as? NameTableCell {
                        cell.backgroundColor = .red
                        return cell
                    }
                } else {
                    
                    if let cell = tableView.dequeueReusableCell(withIdentifier: "NameTableCell", for: indexPath) as? NameTableCell {
                        cell.backgroundColor = .cyan
                         return cell
                    }
}
                return UITableViewCell()























//func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//    if indexPath.row == 0 {
//
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "NameButtonTableCell", for: indexPath) as? NameTableCell {
//            cell.backgroundColor = .red
//            return cell
//        }
//    } else {
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "NameTableCell", for: indexPath) as? NameTableCell {
//            cell.backgroundColor = .cyan
//            return cell
//        }
//    }
//    return UITableViewCell()


            }
}


