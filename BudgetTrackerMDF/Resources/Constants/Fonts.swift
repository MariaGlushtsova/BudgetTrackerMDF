//
//  Fonts.swift
//  BudgetTrackerMDF
//
//  Created by Михаил Латий on 17.06.2023.
//

import UIKit

enum Fonts: String {
    case regular = "GTWalsheimPro-Regular"
    case lightOblique = "GTWalsheimPro-LightOblique"
    case medium = "GTWalsheimPro-Medium"
    case bold = "GTWalsheimPro-Bold"

    func addFont(_ size: CGFloat) -> UIFont {
        UIFont(name: rawValue, size: size) ?? UIFont()
    }
}
