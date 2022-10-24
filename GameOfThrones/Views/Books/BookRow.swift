//
//  BookRow.swift
//  GameOfThrones
//
//  Created by Amby on 24/10/2022.
//

import SwiftUI

struct BookRow: View {
    @State private var isLiked: Bool = false
    @State var randomBookImage: String = ""

    let bookImages = ["book-1", "book-2", "book-3", "book-4", "book-5", "book-6", "book-7", "book-8"]
    
    var book: Book
    var body: some View {
        VStack {
            HStack(spacing: 12) {
                Image(randomBookImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                VStack(alignment: .leading, spacing: 8) {
                    Text(book.name)
                        .fontWeight(.semibold)
                        .foregroundColor(.green)
                    Label {
                        Text(book.country)
                    } icon: {
                        Image(systemName: "flag.fill")
                    }
                    .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                Button(action: {
                    isLiked.toggle()
                }, label: {
                    Image(systemName: isLiked ? "suit.heart.fill" : "suit.heart")
                        .font(.title3)
                        .foregroundColor(.green)
                })

                Button(action: {

                }, label: {
                    Image(systemName: "ellipsis")
                        .font(.title3)
                        .foregroundColor(.white)
                })
            }
            .padding()
            Divider()
                .padding(.horizontal, 25)

            .onAppear {
                self.randomBookImage = getRandomImage()
        }
        }
    }

    private func getRandomImage() -> String {
        let arrayImages = bookImages
        return arrayImages.randomElement()!
    }
}

struct BookRow_Previews: PreviewProvider {

    static var previews: some View {
        BookRow(book: Book(name: "Book", isbn: "232", numberOfPages: 10, publisher: "3", country: "kenya", mediaType: "ulr"))
            .preferredColorScheme(.dark)
    }
}

