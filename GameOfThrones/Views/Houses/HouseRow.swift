//
//  HouseRow.swift
//  GameOfThrones
//
//  Created by Amby on 21/10/2022.
//

import SwiftUI

struct HouseRow: View {
    var house: House
    var body: some View {
        HStack {
            Text(house.name)
                .fontWeight(.semibold)
                .foregroundColor(Color.theme.accent)
        }
    }
}

struct HouseRow_Previews: PreviewProvider {
    static var previews: some View {
        HouseRow(house:House(name: "House 1", region: "Region one", coatOfArms: "CoatOfArm", words: "word", founded: "19 AD"))
    }
}
