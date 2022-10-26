//
//  Color.swift
//  GameOfThrones
//
//  Created by Amby on 26/10/2022.
//

import Foundation
import SwiftUI

extension Color {

    static let theme = ColorTheme()
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let backgroundColor = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}
