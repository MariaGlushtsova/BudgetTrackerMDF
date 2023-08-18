//
//  SettingsHeaderView.swift
//  BudgetTrackerMDF
//
//  Created by i0240 on 18.08.2023.
//

import UIKit

class SettingsHeaderView: UITableViewHeaderFooterView {

    // MARK: - Outlets

    private lazy var pinkView: PinkView = {
        let view = PinkView()
        view.backgroundColor = Colors.pink.color
        view.layer.cornerRadius = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    // MARK: - Initializers

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup

    private func setupHierarchy() {
        contentView.addSubview(pinkView)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            pinkView.topAnchor.constraint(equalTo: contentView.topAnchor),
            pinkView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25),
            pinkView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -25),
            pinkView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
