//
//  Book.swift
//  GameOfThrones
//
//  Created by Amby on 24/10/2022.
//

import Foundation
/*
"url": "https://anapioficeandfire.com/api/books/1",
    "name": "A Game of Thrones",
    "isbn": "978-0553103540",
    "authors": [
        "George R. R. Martin"
    ],
    "numberOfPages": 694,
    "publisher": "Bantam Books",
    "country": "United States",
    "mediaType": "Hardcover",
    "released": "1996-08-01T00:00:00",

 */


struct Book: Codable, Identifiable {
    var name: String
    var isbn: String
    var numberOfPages: Int
    var publisher: String
    var country: String
    var mediaType: String
    var id: String {
        name
    }

}
