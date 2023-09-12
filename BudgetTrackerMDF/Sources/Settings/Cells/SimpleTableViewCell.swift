//
//  SimpleTableViewCell.swift
//  BudgetTrackerMDF
//
//  Created by i0240 on 18.08.2023.
//

import UIKit

class SimpleTableViewCell: UITableViewCell {

    var settings: SettingsModel? {
        didSet {
            iconImageView.image = UIImage(named: settings?.image ?? "")
            titleLabel.text = settings?.title
            subtitleLabel.text = settings?.subTitle
        }
    }

    // MARK: - Outlets

    private lazy var conteinerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray6
        view.clipsToBounds = true
        view.layer.cornerRadius = 24
        view.contentMode = .scaleAspectFit
        return view
    }()

    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.alpha = 0.5
        return imageView
    }()

    private lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .leading
        stack.distribution = .fill
        stack.spacing = 10
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(subtitleLabel)
        return stack
    }()

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        Theme.labelStyle(label, font: .bold, size: 18)
        label.alpha = 0.8
        label.textAlignment = .left
        return label
    }()

    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemGray2
        label.font = Fonts.regular.addFont(12)
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.settings = nil
    }

    // MARK: - Setup

    private func setupHierarchy() {
        contentView.addSubviews(subviews: [conteinerView, iconImageView, stackView])
    }

    private func setupLayout() {
        conteinerView.addConstraints(
            leading: conteinerView.leadingAnchor,
            paddingLeft: 25,
            centerY: conteinerView.centerYAnchor,
            width: 48,
            height: 48
        )
        iconImageView.addConstraints(
            centerX: conteinerView.centerXAnchor,
            centerY: conteinerView.centerYAnchor
        )
        stackView.addConstraints(
            leading: iconImageView.trailingAnchor,
            paddingLeft: 31,
            centerY: contentView.centerYAnchor
        )
    }
}
