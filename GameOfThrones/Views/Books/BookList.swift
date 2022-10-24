//
//  BookList.swift
//  GameOfThrones
//
//  Created by Amby on 24/10/2022.
//

import SwiftUI

struct BookList: View {
    @StateObject private var viewModel: BookViewModel = BookViewModel()
    private var title: String = "Books of GT"
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (alignment: .leading){
                        ForEach(viewModel.books) { book in
                            NavigationLink {
                                BookDetail(book: book)
                            } label: {
                                BookRow(book: book)
                            }
                        }
                        .navigationTitle(title)
                        .foregroundColor(.green)
                        .listStyle(InsetGroupedListStyle())
                        .padding(10)
                    }
                    .onAppear {
                        viewModel.fetchBooks()
                    }
                    .alert(isPresented: $viewModel.hasError, error: viewModel.error) {
                        Button("Retry") {
                            viewModel.fetchBooks()
                        }
                    }
                }
        }
        .accentColor(.green)
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        BookList()
            .preferredColorScheme(.dark)
    }
}
