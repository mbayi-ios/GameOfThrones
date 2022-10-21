//
//  HouseDetail.swift
//  GameOfThrones
//
//  Created by Amby on 21/10/2022.
//

import SwiftUI

struct HouseDetail: View {
    var house: House

    var body: some View {
        HStack {
            Text(house.name)
            Text(house.region)
            Text(house.coatOfArms)
        }
    }
}

struct HouseDetail_Previews: PreviewProvider {
    static var previews: some View {
        HouseDetail(house: HouseViewModel().houses[1])
    }
}
