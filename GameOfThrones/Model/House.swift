//
//  House.swift
//  GameOfThrones
//
//  Created by Amby on 21/10/2022.
//

import SwiftUI
/*
"url": "https://www.anapioficeandfire.com/api/houses/1",
   "name": "House Algood",
   "region": "The Westerlands",
   "coatOfArms": "A golden wreath, on a blue field with a gold border(Azure, a garland of laurel within a bordure or)",
   "words": "",
 */

struct House: Codable, Identifiable {
    var name: String
    var region: String
    var coatOfArms: String?
    var words: String
    var founded: String
    var id: String {
        name
    }

    var yearFounded: String {
        return !founded.isEmpty ? founded : "no Date"
    }

   
}
