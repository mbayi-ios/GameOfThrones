//
//  CharacterRow.swift
//  GameOfThrones
//
//  Created by Amby on 24/10/2022.
//

import SwiftUI

struct CharacterRow: View {
    var character: Character
    var body: some View {
        Text(character.firstName)
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRow(character: Character(name: "Amby", gender: "male", culture: "luo", born: "1996", died: "0"))
    }
}
