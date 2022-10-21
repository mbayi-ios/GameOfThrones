//
//  ContentView.swift
//  GameOfThrones
//
//  Created by Amby on 21/10/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = HouseViewModel()
    var body: some View {
       HouseList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(HouseViewModel())
    }
}
