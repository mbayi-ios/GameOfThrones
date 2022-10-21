//
//  ModelData.swift
//  GameOfThrones
//
//  Created by Amby on 21/10/2022.
//

import SwiftUI

final class HouseViewModel: ObservableObject {
    //@Published var houses: [House] = load("HousesData.json") -> loading data from json

    @Published private(set) var houses: [House] = []
    @Published private(set) var error: NetworkingManager.NetworkingError?
    @Published var hasError = false

    func fetchHouses() {
        NetworkingManager.shared.request("https://www.anapioficeandfire.com/api/houses/", type: [House].self) {[weak self] res in
            DispatchQueue.main.async {
                switch res {
                case .success(let response):
                    self?.houses = response
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


//JSON static mapper function -> to fetch fake data
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("couldnt find \(filename) in main bundle")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("couldnt load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("couldnt parse \(filename) as \(T.self): \n\(error)")
    }
}

