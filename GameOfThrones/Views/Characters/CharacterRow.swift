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
                        .foregroundColor(.green)
                    Label {
                        Text(character.gender)
                    } icon: {
                        Image(systemName: "person.circle")
                    }
                    .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                Button(action: {
                    isLiked.toggle()
                }, label: {
                    Image(systemName: isLiked ? "suit.heart.fill" : "suit.heart")
                        .font(.title3)
                        .foregroundColor(.green)
                })

                Button(action: {

                }, label: {
                    Image(systemName: "ellipsis")
                        .font(.title3)
                        .foregroundColor(.white)
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
            .preferredColorScheme(.dark)
    }
}

