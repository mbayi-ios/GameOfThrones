//
//  ContentView.swift
//  GameOfThrones
//
//  Created by Amby on 21/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HouseList()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Houses")
                }
            CharacterList()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Character")
                }

            BookList()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Books")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
