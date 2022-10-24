//
//  CharacterList.swift
//  GameOfThrones
//
//  Created by Amby on 24/10/2022.
//

import SwiftUI

struct CharacterList: View {
    @StateObject private var viewModel: CharacterViewModel = CharacterViewModel()
    private var title: String = "Charaters of GT"
    var body: some View {
        NavigationView {
            ZStack {

                List {
                    ForEach(viewModel.characters) { character in
                        NavigationLink {
                            CharacterDetail(character: character)
                        } label: {
                            CharacterRow(character: character)
                        }
                    }
                    .navigationTitle(title)
                    .foregroundColor(.blue)
                    .listStyle(InsetGroupedListStyle())
                    .padding(10)
                }
                .onAppear {
                    viewModel.fetchCharacters()
                }
                .alert(isPresented: $viewModel.hasError, error: viewModel.error) {
                    Button("Retry") {
                        viewModel.fetchCharacters()
                    }
                }
            }
        }
        .accentColor(.black)
    }
}

struct CharacterList_Previews: PreviewProvider {
    static var previews: some View {
        CharacterList()
    }
}
