//
//  HomeView.swift
//  GameOfThrones
//
//  Created by Amby on 21/10/2022.
//

import SwiftUI

struct HouseList: View {
    @EnvironmentObject var viewModel: HouseViewModel

    var body: some View {
        NavigationView {
            ZStack {

                List {
                    ForEach(viewModel.houses) { house in
                        NavigationLink {
                            HouseDetail(house: house)
                        } label: {
                            HouseRow(house: house)
                        }
                    }
                    .navigationTitle("Houses of GT")
                    .foregroundColor(.blue)
                    .listStyle(InsetGroupedListStyle())
                    .padding(10)
                }
                .onAppear {
                    viewModel.fetchHouses()
                }
                .alert(isPresented: $viewModel.hasError, error: viewModel.error) {
                    Button("Retry") {
                        viewModel.fetchHouses()
                    }
                }
            }
        }
        .accentColor(.white)
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HouseList()
            .environmentObject(HouseViewModel())
    }
}
