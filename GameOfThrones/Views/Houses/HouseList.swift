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
            List {
                ForEach(viewModel.houses) { house in
                    NavigationLink {
                        HouseDetail(house: house)
                    } label: {
                        HouseRow(house: house)
                    }

                }
                .navigationTitle("Houses of GT")
            }
        }
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HouseList()
            .environmentObject(HouseViewModel())
    }
}
