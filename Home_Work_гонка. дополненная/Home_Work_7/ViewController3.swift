//
//  ViewController3.swift
//  Home_Work_7
//
//  Created by Тимур Мурадов on 28.04.2022.
//
import UIKit

class NameTableCell: UITableViewCell {
    
    @IBOutlet var Label: UILabel!
    
}

class ViewController3: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    var date = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Результат"
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      if let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath) as? NameTableCell {
          tableView.backgroundColor = .systemPurple
          let dateformatter = DateFormatter()
          dateformatter.dateFormat = "d MMM yyyy, h:mm:ss a"
          dateformatter.locale = Locale(identifier: "en")
          var NewDate2 = dateformatter.string(from: date)
          cell.Label.text = NewDate2
            return cell
        }
        
        return UITableViewCell()
    }
    
}

