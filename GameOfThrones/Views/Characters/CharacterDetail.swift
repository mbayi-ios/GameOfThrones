//
//  CharacterDetail.swift
//  GameOfThrones
//
//  Created by Amby on 24/10/2022.
//

import SwiftUI

struct CharacterDetail: View {
    var character: Character
    @State var randomCharacterImage: String = ""

    let CharacterImages = ["character-1", "character-2", "character-3", "character-4", "character-5", "character-6", "character-7", "character-8"]

    var body: some View {
        VStack(spacing: 50) {
            Image(randomCharacterImage)
                .resizable()
                .aspectRatio( contentMode: .fill)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 10)
                .padding(30)
                .frame(width: 350, height: 300)

            HStack(spacing: 10){
                Text(character.name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                Spacer()
                VStack(spacing: 10) {
                    Text(character.gender)
                        .frame(maxWidth: .infinity)
                        .font(.callout)
                    Text(character.culture)
                        .font(.title3)
                        .fontWeight(.bold)
                }
            }
            .background(Color.theme.backgroundColor)


        }
        .onAppear {
            self.randomCharacterImage = chooseRandomImage()
        }
    }


    private func chooseRandomImage() -> String {
        let array = CharacterImages
        return array.randomElement()!
    }
}

struct CharacterDetail_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetail(character: Character(name: "Addam Osgrey", gender: "male", culture: "luo", born: "1996", died: "0"))
    }
}


