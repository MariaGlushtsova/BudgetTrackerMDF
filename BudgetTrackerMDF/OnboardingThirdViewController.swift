//
//  OnboardingThirdViewController.swift
//  BudgetTrackerMDF
//
//  Created by i0240 on 17.06.2023.
//

import UIKit

class OnboardingThirdViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var discriptionLabel: UILabel!
    @IBOutlet weak var interestedButton: UIButton!
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        addShadowView()

    }

    // MARK: - Setup


    // MARK: - Actions

    private func addShadowView() {
        bottomView.layer.shadowColor = UIColor.black.cgColor
        bottomView.layer.shadowOpacity = 0.3
        bottomView.layer.shadowOffset = .zero
        bottomView.layer.shadowRadius = 10
        bottomView.layer.shouldRasterize = true
        bottomView.layer.rasterizationScale = UIScreen.main.scale
    }

}
