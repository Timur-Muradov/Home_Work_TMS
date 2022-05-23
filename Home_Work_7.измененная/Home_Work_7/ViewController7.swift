//
//  ViewController7.swift
//  Home_Work_7
//
//  Created by Тимур Мурадов on 03.05.2022.

//  Практика с классами. Создать классы родителей, классы наследников. И переменные типа родителя и типа наследника

import UIKit


class Books {
    let genre: String
    let chapters: Int
    let pages: Int
    init(chapters: Int, pages: Int, genre: String) {
        self.chapters = chapters
        self.pages = pages
        self.genre = genre
    }
}

class textbook: Books {
    let color: String
    let year: Int
    let academicSubject: String
    init(color: String, year: Int, academicSubject: String, chapters: Int, pages: Int, genre: String){
        self.color = color
        self.year = year
        self.academicSubject = academicSubject
        super.init(chapters: chapters, pages: pages, genre: genre)
    }
}

let book = Books(chapters: 22, pages: 300, genre: "Детектив")

let book2 = textbook(color: "Синий", year: 2006, academicSubject: "Физика", chapters: 34, pages: 200, genre: "Учебная литература")


class ViewController7: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
