//
//  BookRow.swift
//  GameOfThrones
//
//  Created by Amby on 24/10/2022.
//

import SwiftUI

struct BookRow: View {
    var book: Book
    var body: some View {
        Text(book.name)
    }
}

struct BookRow_Previews: PreviewProvider {

    static var previews: some View {
        BookRow(book: Book(name: "Book", isbn: "232", numberOfPages: 10, publisher: "3", country: "kenya", mediaType: "ulr"))
    }
}

