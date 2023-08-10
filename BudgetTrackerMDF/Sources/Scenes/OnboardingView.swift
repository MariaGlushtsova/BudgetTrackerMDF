//
//  OnboardingView.swift
//  BudgetTrackerMDF
//
//  Created by i0240 on 08.07.2023.
//

import UIKit

final class OnboardingView: UIView {

    private var currentModelIndex = 0

    // MARK: - Outlets

    private lazy var mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private lazy var pageImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private lazy var childView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.07
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 36
        view.layer.masksToBounds = false
        view.layer.shouldRasterize = true
        view.layer.rasterizationScale = UIScreen.main.scale
        return view
    }()

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = Colors.mainDark.color
        label.font = Fonts.bold.addFont(24)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()

    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = Colors.mainDark.color
        label.font = Fonts.regular.addFont(14)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()

    private lazy var listPageButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = Colors.pink.color
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.setTitle("I'm interested", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(listPageButtonPressed), for: .touchUpInside)
        return button
    }()

    // MARK: - Initialization

    init(model: OnboardingModel) {
        super.init(frame: .zero)
        backgroundColor = .white
        setupHierarchy()
        setupLayout()

        mainImageView.image = UIImage(named: model.image)
        pageImageView.image = UIImage(named: model.pageImage)
        titleLabel.text = model.title
        descriptionLabel.text = model.description
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup

    private func updateOnboarding(with model: OnboardingModel) {
        mainImageView.image = UIImage(named: model.image)
        pageImageView.image = UIImage(named: model.pageImage)
        titleLabel.text = model.title
        descriptionLabel.text = model.description
    }

    private func setupHierarchy() {
        addSubviews([mainImageView, pageImageView, childView])
        childView.addSubviews([titleLabel, descriptionLabel, listPageButton])
    }

    private func setupLayout() {
        mainImageView.addConstraints(bottom: pageImageView.topAnchor,
                                     paddingBottom: 93,
                                     centerX: centerXAnchor,
                                     width: 232,
                                     height: 251
        )
        pageImageView.addConstraints(bottom: childView.topAnchor,
                                     paddingBottom: 35,
                                     centerX: centerXAnchor,
                                     width: 30,
                                     height: 4
        )
        titleLabel.addConstraints(top: childView.topAnchor,
                                  paddingTop: 34,
                                  centerX: centerXAnchor
        )
        descriptionLabel.addConstraints(top: titleLabel.bottomAnchor,
                                        paddingTop: 18,
                                        leading: childView.leadingAnchor,
                                        paddingLeft: 29,
                                        trailing: childView.trailingAnchor,
                                        paddingRight: 29
        )
        listPageButton.addConstraints(top: descriptionLabel.bottomAnchor,
                                      paddingTop: 50,
                                      leading: childView.leadingAnchor,
                                      paddingLeft: 45,
                                      trailing: childView.trailingAnchor,
                                      paddingRight: 45,
                                      height: 48
        )
        childView.addConstraints(leading: leadingAnchor,
                                 paddingLeft: 15,
                                 trailing: trailingAnchor,
                                 paddingRight: 15,
                                 bottom: bottomAnchor,
                                 paddingBottom: 31,
                                 height: 270
        )
    }

    // MARK: - Actions

    @objc func listPageButtonPressed() {
        currentModelIndex += 1

        if currentModelIndex < OnboardingModel.modelsArray.count {
            let nextModel = OnboardingModel.modelsArray[currentModelIndex]
            updateOnboarding(with: nextModel)
        } else {
            // Переход на следующий экран
        }
    }
}
