//
//  OnboardingThirdViewController.swift
//  BudgetTrackerMDF
//
//  Created by i0240 on 17.06.2023.
//

import UIKit

class OnboardingThirdViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak private var imageView: UIImageView!
    @IBOutlet weak private var childView: UIView!
    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak private var discriptionLabel: UILabel!
    @IBOutlet weak private var interestedButton: UIButton!
    @IBOutlet weak private var pageImageView: UIImageView!
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        addShadowView()

    }

    // MARK: - Setup

    private func addShadowView() {
        childView.layer.shadowColor = UIColor.black.cgColor
        childView.layer.shadowOpacity = 0.07
        childView.layer.shadowOffset = CGSize(width: 0, height: 12)
        childView.layer.shadowRadius = 36
        childView.layer.shouldRasterize = true
        childView.layer.rasterizationScale = UIScreen.main.scale
    }

    // MARK: - Actions

   

}
