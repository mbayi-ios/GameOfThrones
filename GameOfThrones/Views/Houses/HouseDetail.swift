//
//  HouseDetail.swift
//  GameOfThrones
//
//  Created by Amby on 21/10/2022.
//

import SwiftUI

struct HouseDetail: View {
    var house: House
    var width = UIScreen.main.bounds.width
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                HStack {
                    Image("Throne")
                        .resizable()
                        .frame(width: 300, height: 300)
                }
                .padding(.top, -30)
                VStack(spacing: 20) {
                    Text(house.name)
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.top)

                    Text(house.region)
                        .fontWeight(.bold)

                    Text(house.coatOfArms ?? "No Coat of Arms")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                        .foregroundColor(.gray)

                    Text("Founded:")
                        .font(.body)
                        .fontWeight(.bold)

                    HStack{
                        Image(systemName: "crown.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)

                        VStack(alignment: .leading, spacing: 4) {
                            Text(house.yearFounded )
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                        .padding()
                    }
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10)
                }
            }
            .zIndex(1)

            Circle()
                .fill(.black)
                .frame(width: UIScreen.main.bounds.width + 200, height: UIScreen.main.bounds.width + 200)
                .padding(.horizontal, -100)
                .offset(y: -UIScreen.main.bounds.width)
        }
        .animation(.default)
    }
}

struct HouseDetail_Previews: PreviewProvider {
    static var previews: some View {
        HouseDetail(house: House.init(name: "House Blackfyre of King's Landing", region: "e", coatOfArms: "Gules, a three headed dragon breathing flames sable", words: "empty", founded: "18BC"))
    }
}
