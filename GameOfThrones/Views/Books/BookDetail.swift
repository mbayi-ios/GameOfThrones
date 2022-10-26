//
//  BookDetail.swift
//  GameOfThrones
//
//  Created by Amby on 24/10/2022.
//

import SwiftUI

struct BookDetail: View {
    var book: Book

    @State var randomBookImage: String = ""

    let bookImages = ["book-1", "book-2", "book-3", "book-4", "book-5", "book-6", "book-7", "book-8"]

    var body: some View {
        VStack(spacing: 50) {
            Image(randomBookImage)
                .resizable()
                .aspectRatio( contentMode: .fill)
                .clipShape(Rectangle())
                .frame(width: 250, height: 400)
                .cornerRadius(20)
                .shadow(color: .black.opacity(0.6), radius: 20, x: 0, y: 10)

            HStack(spacing: 10){
                Text(book.name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)

                Spacer()
                VStack(alignment: .leading, spacing: 10) {
                    Text(book.publisher)
                        .frame(maxWidth: .infinity)
                        .font(.callout)
                    Text(book.country)
                        .font(.callout)

                }
                .frame(maxWidth: .infinity)

            }

            .frame(width: 250, height: 80)
            .padding(.horizontal, 30)
            .foregroundColor(Color.theme.backgroundColor)
            .background(Color.theme.secondaryText)
            .cornerRadius(20)
            .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 2)

        }
        .onAppear {
            self.randomBookImage = getRandomImage()
        }
    }

    private func getRandomImage() -> String {
        let arrayImages = bookImages
        return arrayImages.randomElement()!
    }
}

struct BookDetail_Previews: PreviewProvider {
    //static var books = Book()
    static var previews: some View {
        BookDetail(book: Book(name: "A Storm of Swords", isbn: "232", numberOfPages: 10, publisher: "Bantam Books", country: "kenya", mediaType: "ulr"))
            .preferredColorScheme(.dark)
    }
}
