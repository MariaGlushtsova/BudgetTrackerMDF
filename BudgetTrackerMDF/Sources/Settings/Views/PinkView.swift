//
//  PinkView.swift
//  BudgetTrackerMDF
//
//  Created by i0240 on 18.08.2023.
//

import UIKit

class PinkView: UIView {

    // MARK: - Outlets

    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Do more with Pro"
        label.textColor = .white
        label.font = Fonts.regular.addFont(12)
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Get Premium now"
        label.textColor = .white
        label.font = Fonts.bold.addFont(21)
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()

    private lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .leading
        stack.distribution = .fill
        stack.spacing = 8
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.addArrangedSubview(subtitleLabel)
        stack.addArrangedSubview(titleLabel)
        return stack
    }()

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    //MARK: - Initial

    init() {
        super.init(frame: .zero)
        commonInit()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func commonInit() {
        backgroundColor = Colors.pink.color
        setupHierarchy()
        setupLayout()
        imageContentMode()
    }

    // MARK: - Setup

    private func setImageTo(view: UIImageView, in contentMode: UIView.ContentMode, image: String) {
        view.contentMode = contentMode
        view.image = .init(named: image)
    }

    private func imageContentMode() {
        setImageTo(view: imageView, in: .bottomRight, image: "ic-trophy")
    }

    private func setupHierarchy() {
        addSubviews([stackView, imageView])
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),

            imageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
}
