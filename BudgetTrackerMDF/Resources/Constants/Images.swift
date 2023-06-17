//
//  Images.swift
//  BudgetTrackerMDF
//
//  Created by Михаил Латий on 17.06.2023.
//

import UIKit

enum Images: String {
    case onboardingFirst
    case onboardingSecond
    case onboardingThird

    var image: UIImage? {
        UIImage(named: rawValue)
    }

    var systemImage: UIImage? {
        UIImage(systemName: rawValue)
    }
}
