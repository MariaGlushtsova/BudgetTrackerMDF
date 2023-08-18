//
//  UIView+Extensions.swift
//  BudgetTrackerMDF
//
//  Created by i0240 on 18.08.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ subviews: [UIView]) {
        subviews.forEach { addSubview($0) }
    }
}
