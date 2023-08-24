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
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private lazy var pageImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
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
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = Colors.mainDark.color
        label.font = Fonts.bold.addFont(24)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = Colors.mainDark.color
        label.font = Fonts.regular.addFont(14)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var listPageButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = Colors.pink.color
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.setTitle("I'm interested", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
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
        addSubview(mainImageView)
        addSubview(pageImageView)
        addSubview(childView)
        childView.addSubview(titleLabel)
        childView.addSubview(descriptionLabel)
        childView.addSubview(listPageButton)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            mainImageView.bottomAnchor.constraint(equalTo: pageImageView.topAnchor, constant: -93),
            mainImageView.centerXAnchor.constraint(equalTo: centerXAnchor),

            mainImageView.heightAnchor.constraint(equalToConstant: 251),
            mainImageView.widthAnchor.constraint(equalToConstant: 232),

            pageImageView.bottomAnchor.constraint(equalTo: childView.topAnchor, constant: -35),
            pageImageView.centerXAnchor.constraint(equalTo: centerXAnchor),

            pageImageView.widthAnchor.constraint(equalToConstant: 30),
            pageImageView.heightAnchor.constraint(equalToConstant: 4),

            titleLabel.topAnchor.constraint(equalTo: childView.topAnchor, constant: 34),
            titleLabel.centerXAnchor.constraint(equalTo: childView.centerXAnchor),

            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 18),
            descriptionLabel.leadingAnchor.constraint(equalTo: childView.leadingAnchor, constant: 29),
            descriptionLabel.trailingAnchor.constraint(equalTo: childView.trailingAnchor, constant: -29),

            listPageButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 50),
            listPageButton.leadingAnchor.constraint(equalTo: childView.leadingAnchor, constant: 45),
            listPageButton.trailingAnchor.constraint(equalTo: childView.trailingAnchor, constant: -45),
            listPageButton.heightAnchor.constraint(equalToConstant: 48),

            childView.heightAnchor.constraint(equalToConstant: 270),
            childView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            childView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            childView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -31)
        ])
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
