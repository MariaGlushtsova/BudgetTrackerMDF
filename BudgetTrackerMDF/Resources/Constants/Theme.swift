//
//  Theme.swift
//  BudgetTrackerMDF
//
//  Created by i0240 on 10.08.2023.
//

import Foundation
import UIKit

struct Theme {

    static func labelStyle(_ label: UILabel, font: Fonts, size: CGFloat) {
        label.font = font.addFont(size)
        label.textColor = Colors.mainDark.color
        label.textAlignment = .center
        label.numberOfLines = 0
    }

    static func pinkButtonStyle(_ button: UIButton, cornerRadius: CGFloat = 10, size: CGFloat = 15) {
        button.backgroundColor = Colors.pink.color
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = cornerRadius
        button.titleLabel?.font = Fonts.medium.addFont(size)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
    }

    static func shadowViewStyle(_ view: UIView, shadowRadius: CGFloat = 36) {
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.07
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = shadowRadius
        view.layer.masksToBounds = false
        view.layer.shouldRasterize = true
        view.layer.rasterizationScale = UIScreen.main.scale
    }
}
