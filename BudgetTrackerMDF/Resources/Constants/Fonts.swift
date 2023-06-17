//
//  Fonts.swift
//  BudgetTrackerMDF
//
//  Created by Михаил Латий on 17.06.2023.
//

import UIKit

enum Fonts: String {
    case regular = "GTWalsheimPro-Regular.ttf"
    case lightOblique = "GTWalsheimPro-LightOblique.ttf"
    case medium = "GTWalsheimPro-Medium.ttf"
    case bold = "GTWalsheimPro-Bold.ttf"

    func addFont(_ size: CGFloat) -> UIFont {
        UIFont(name: rawValue, size: size) ?? UIFont()
    }
}
