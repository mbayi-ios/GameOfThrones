import SwiftUI

struct CharacterRow: View {
    var character: Character

    @State private var isLiked: Bool = false
    @State var randomCharacterImage: String = ""

    let CharacterImages = ["character-1", "character-2", "character-3", "character-4", "character-5", "character-6", "character-7", "character-8"]

    var body: some View {
        VStack {
            HStack(spacing: 12) {
                Image(randomCharacterImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                VStack(alignment: .leading, spacing: 8) {
                    Text(character.firstName)
                        .fontWeight(.semibold)
                    Label {
                        Text(character.gender)
                            .foregroundColor(Color.theme.secondaryText)
                    } icon: {
                        Image(systemName: "person.circle")
                            .foregroundColor(Color.theme.secondaryText)
                    }

                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color.theme.accent)

                Button(action: {
                    isLiked.toggle()
                }, label: {
                    Image(systemName: isLiked ? "suit.heart.fill" : "suit.heart")
                        .font(.title3)
                        .foregroundColor(Color.theme.secondaryText)
                })

                Button(action: {

                }, label: {
                    Image(systemName: "ellipsis")
                        .font(.title3)
                        .foregroundColor(Color.theme.secondaryText)
                })
            }
            .padding()
            Divider()
                .padding(.horizontal, 25)

                .onAppear {
                    self.randomCharacterImage = chooseRandomImage()
                }
        }
    }

    private func chooseRandomImage() -> String {
        let array = CharacterImages
        return array.randomElement()!
    }
}

struct CharacterRow_Previews: PreviewProvider {

    static var previews: some View {
        CharacterRow(character: Character(name: "Amby", gender: "male", culture: "luo", born: "1996", died: "0"))

    }
}

