//
//  LabelTableViewCell.swift
//  BudgetTrackerMDF
//
//  Created by i0240 on 18.08.2023.
//

import UIKit

class LabelTableViewCell: SimpleTableViewCell {

    // MARK: - Outlets

    private lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "v2.0.21"
        label.textColor = .systemGray2
        label.font = Fonts.regular.addFont(12)
        label.textAlignment = .right
        label.numberOfLines = 1
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
        contentView.addSubview(detailLabel)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            detailLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -26),
            detailLabel.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor)
        ])
    }
}
