//
//  SettingsModel.swift
//  BudgetTrackerMDF
//
//  Created by i0240 on 18.08.2023.
//

import UIKit

enum CellType {
    case switchButton
    case label
    case none
}

struct SettingsModel: Hashable {
    var image: String
    var title: String
    var subTitle: String
    var cellType: CellType
}

extension SettingsModel {
    static var settings: [[SettingsModel]] = [
        [SettingsModel(image: "ic-rock", title: "Settings title here", subTitle: "Setting status", cellType: .switchButton),
         SettingsModel(image: "ic-rock", title: "Settings title here", subTitle: "Setting status", cellType: .switchButton),
         SettingsModel(image: "ic-rock", title: "Settings title here", subTitle: "Setting status", cellType: .none),
         SettingsModel(image: "ic-rock", title: "Settings title here", subTitle: "Setting status", cellType: .none),
         SettingsModel(image: "ic-rock", title: "Settings title here", subTitle: "Setting status", cellType: .none),
         SettingsModel(image: "ic-rock", title: "Settings title here", subTitle: "Setting status", cellType: .label)
        ]
    ]
}
