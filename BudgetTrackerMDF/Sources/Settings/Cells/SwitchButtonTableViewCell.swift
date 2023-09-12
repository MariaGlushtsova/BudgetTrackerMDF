//
//  SwitchButtonTableViewCell.swift
//  BudgetTrackerMDF
//
//  Created by i0240 on 18.08.2023.
//

import UIKit

class SwitchButtonTableViewCell: SimpleTableViewCell {

    //MARK: - Outlets

    private lazy var switchControl: UISwitch = {
        let switchControl = UISwitch()
        switchControl.isOn = false
        switchControl.addTarget(self, action: #selector(switchValueChanged), for: .valueChanged)
        return switchControl
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
        contentView.addSubview(switchControl)
    }

    private func setupLayout() {
        switchControl.addConstraints(
            trailing: contentView.trailingAnchor,
            paddingRight: 26,
            centerY: contentView.centerYAnchor
        )
    }

    // MARK: - Actions

    @objc func switchValueChanged() {
        if switchControl.isOn {
            print("Switch turned on")
        } else {
            print("Switch turned off")
        }
    }
}