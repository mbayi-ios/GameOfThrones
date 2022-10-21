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
        }
    }
}

struct HouseRow_Previews: PreviewProvider {
    static var houses = HouseViewModel().houses
    static var previews: some View {
        HouseRow(house: houses[1])
    }
}
