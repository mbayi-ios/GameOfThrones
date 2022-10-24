//
//  Character.swift
//  GameOfThrones
//
//  Created by Amby on 24/10/2022.
//

import Foundation

/*
 {
     "url": "https://anapioficeandfire.com/api/characters/583",
     "name": "Jon Snow",
     "gender": "Male",
     "culture": "Northmen",
     "born": "In 283 AC",
     "died": "",
     "titles": [
         "Lord Commander of the Night's Watch"
     ],
     "aliases": [
         "Lord Snow",
         "Ned Stark's Bastard",

     ],
     "father": "",
     "mother": "",
     "spouse": "",
     "allegiances": [
         "https://anapioficeandfire.com/api/houses/362"
     ],
     "books": [
         "https://anapioficeandfire.com/api/books/5"
     ],
     "povBooks": [
         "https://anapioficeandfire.com/api/books/1",
         "https://anapioficeandfire.com/api/books/2",
         "https://anapioficeandfire.com/api/books/3",
         "https://anapioficeandfire.com/api/books/8"
     ],
     "tvSeries": [
         "Season 1",
         "Season 2",

     ],
     "playedBy": [
         "Kit Harington"
     ]
 }

 */


struct Character: Codable, Identifiable {
    var name: String
    var gender: String
    var culture: String
    var born: String
    var died: String
    var id: String {
        name
    }

    var firstName: String {
        var newName: String = ""
         if name.isEmpty {
              newName = "Character Name Missing"
         } else {
             newName = name
         }
        return newName
    }

}
