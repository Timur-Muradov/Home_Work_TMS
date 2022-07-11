//
//  ViewController.swift
//  home_work_22.swift
//
//  Created by Тимур Мурадов on 10.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let json = """

{
"name": "X-wing",
"model": "T-65 X-wing",
"manufacturer": "Incom Corporation",
"cost_in_credits": "149999",
"length": "12.5",
"max_atmosphering_speed": "1050",
"crew": "1",
"passengers": "0",
"cargo_capacity": "110",
"consumables": "1 week",
"hyperdrive_rating": "1.0",
"MGLT": "100",
"starship_class": "Starfighter",
"pilots": [
    "https://swapi.dev/api/people/1/",
    "https://swapi.dev/api/people/9/",
    "https://swapi.dev/api/people/18/",
    "https://swapi.dev/api/people/19/"
],
"films": [
    "https://swapi.dev/api/films/1/",
    "https://swapi.dev/api/films/2/",
    "https://swapi.dev/api/films/3/"
],
"created": "2014-12-12T11:19:05.340000Z",
"edited": "2014-12-20T21:23:49.886000Z",
"url": "https://swapi.dev/api/starships/12/"
}

"""
        
        if let jsonData: Data = json.data(using: .utf8) {
            if let starship: Starship = try? JSONDecoder().decode(Starship.self, from: jsonData) {
                print(starship.name)
            }
        
            if let jsonData: Data = json.data(using: .utf8) {
                if let starship: [String: Any] = try? JSONSerialization.jsonObject(with: jsonData) as? [String: Any] {
                    print(starship["passengers"])
                }
            }
                
            
    }
}

}
