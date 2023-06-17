//
//  Colors.swift
//  BudgetTrackerMDF
//
//  Created by Михаил Латий on 17.06.2023.
//

import UIKit

enum Colors: String {
    case mainDark
    case pink

    var color: UIColor {
        UIColor(named: rawValue) ?? .clear
    }

    var cgColor: CGColor {
        UIColor(named: rawValue)?.cgColor ?? UIColor().cgColor
    }

}
