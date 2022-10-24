//
//  CharacterViewModel.swift
//  GameOfThrones
//
//  Created by Amby on 24/10/2022.
//

import Foundation


final class CharacterViewModel: ObservableObject {
    @Published private(set) var characters: [Character] = []
    @Published private(set) var error: NetworkingManager.NetworkingError?
    @Published var hasError = false

    

    func fetchCharacters() {
        NetworkingManager.shared.request("https://www.anapioficeandfire.com/api/characters/", type: [Character].self) {[weak self] res in
            DispatchQueue.main.async {
                switch res {
                case .success(let response):
                    self?.characters = response
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
