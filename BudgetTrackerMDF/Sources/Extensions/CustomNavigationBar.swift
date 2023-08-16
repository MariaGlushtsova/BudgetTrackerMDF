//
//  CustomNavigationBar.swift
//  BudgetTrackerMDF
//
//  Created by Михаил Латий on 16.08.2023.
//

import UIKit

extension UIViewController {
    func createCustomNavigationBar(title: String?, action: String?) -> UIView {
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

        // Back button
        let backButton = UIButton(type: .system)
        let arrow = UIImage(systemName: "arrow.backward")
        backButton.tintColor = .black
        backButton.setImage(arrow, for: .normal)
        backButton.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(pointSize: 20, weight: .regular), forImageIn: .normal)
        backButton.addTarget(self, action: Selector(action ?? ""), for: .touchUpInside)
        backButton.translatesAutoresizingMaskIntoConstraints = false

        // Title
       let label = UILabel()
        label.text = title
        label.font = .systemFont(ofSize: 20, weight: .heavy)
        label.translatesAutoresizingMaskIntoConstraints = false

        // Stack
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 10
        stack.addArrangedSubview(backButton)
        stack.addArrangedSubview(label)
        stack.transform = CGAffineTransform(translationX: 15, y: 10)
        stack.translatesAutoresizingMaskIntoConstraints = false

        return customView
    }
}

