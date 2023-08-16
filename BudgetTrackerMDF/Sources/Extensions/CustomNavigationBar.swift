//
//  CustomNavigationBar.swift
//  BudgetTrackerMDF
//
//  Created by Михаил Латий on 16.08.2023.
//

import UIKit

extension UIViewController {
    func createCustomNavigationBar() -> UIView {
        let customView = UIView()
        
        customView.backgroundColor = .white
        customView.layer.cornerRadius = 30
        customView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        customView.translatesAutoresizingMaskIntoConstraints = false
        // Shadow
        customView.layer.shadowColor = UIColor.black.cgColor
        customView.layer.shadowOpacity = 0.3
        customView.layer.shadowOffset = .zero
        customView.layer.shadowRadius = 5
        customView.layer.shouldRasterize = true
        customView.layer.rasterizationScale = UIScreen.main.scale

        return customView
    }
}

