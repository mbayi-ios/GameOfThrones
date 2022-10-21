//
//  GameOfThronesApp.swift
//  GameOfThrones
//
//  Created by Amby on 21/10/2022.
//

import SwiftUI

@main
struct GameOfThronesApp: App {
   @StateObject private var viewModel = HouseViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
