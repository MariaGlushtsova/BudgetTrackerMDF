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
    @IBOutlet weak private var bottomView: UIView!
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
        bottomView.layer.shadowColor = UIColor.black.cgColor
        bottomView.layer.shadowOpacity = 0.07
        bottomView.layer.shadowOffset = CGSize(width: 0, height: 12)
        bottomView.layer.shadowRadius = 36
        bottomView.layer.shouldRasterize = true
        bottomView.layer.rasterizationScale = UIScreen.main.scale
    }

    // MARK: - Actions

   

}
