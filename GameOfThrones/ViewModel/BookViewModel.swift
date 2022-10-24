//
//  BookViewModel.swift
//  GameOfThrones
//
//  Created by Amby on 24/10/2022.
//

import Foundation


final class BookViewModel: ObservableObject {
    @Published private(set) var books: [Book] = []
    @Published private(set) var error: NetworkingManager.NetworkingError?
    @Published var hasError = false

    func fetchBooks() {
        NetworkingManager.shared.request("https://www.anapioficeandfire.com/api/books/", type: [Book].self) {[weak self] res in
            DispatchQueue.main.async {
                switch res {
                case .success(let response):
                    self?.books = response
                    print("response\(response)")
                case .failure(let error):
                    print(error)
                    self?.hasError = true
                    self?.error = error as? NetworkingManager.NetworkingError
                }
            }
        }
    }
}
