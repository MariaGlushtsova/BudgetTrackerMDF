//
//  OnboardingThirdViewController.swift
//  BudgetTrackerMDF
//
//  Created by i0240 on 17.06.2023.
//

import UIKit

class OnboardingViewController: BasicViewController {

    // MARK: - Outlets

    private lazy var onboardingView: OnboardingView = {
        let onboardingView = OnboardingView(model: OnboardingItemModel.modelsArray[0])
        return onboardingView
    }()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Setup

    override func setupHierarchy() {
        view.addSubview(onboardingView)
    }
    
    override func setupLayout() {
        onboardingView.addConstraints(
            top: view.topAnchor,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            bottom: view.bottomAnchor
        )
    }
}
