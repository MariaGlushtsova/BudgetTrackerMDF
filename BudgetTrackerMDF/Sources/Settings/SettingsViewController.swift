//
//  SettingsViewController.swift
//  BudgetTrackerMDF
//
//  Created by i0240 on 18.08.2023.
//

import UIKit

class SettingsViewController: BasicViewController {

    // MARK: - Outlets

    private lazy var settingsTableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
        registerCells()
    }

    // MARK: - Setup

    private func registerCells() {
        settingsTableView.register(SimpleTableViewCell.self, forCellReuseIdentifier: "cell")
        settingsTableView.register(SwitchButtonTableViewCell.self, forCellReuseIdentifier: "switchCell")
        settingsTableView.register(LabelTableViewCell.self, forCellReuseIdentifier: "labelCell")
        settingsTableView.register(SettingsHeaderView.self, forHeaderFooterViewReuseIdentifier: "header")
    }

    override func setupHierarchy() {
        view.addSubview(settingsTableView)
    }

    override func setupLayout() {
        settingsTableView.addConstraints(
            top: view.topAnchor,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            bottom: view.bottomAnchor
        )
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        6
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let item = SettingsModel.settings[indexPath.section][indexPath.row]

        switch(item.cellType) {
        case .switchButton:
            let cell = tableView.dequeueReusableCell(withIdentifier: "switchCell", for: indexPath) as! SwitchButtonTableViewCell
            cell.settings = item
            return cell
        case .none:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SimpleTableViewCell
            cell.settings = item
            return cell
        case .label:
            let cell = tableView.dequeueReusableCell(withIdentifier: "labelCell", for: indexPath) as! LabelTableViewCell
            cell.settings = item
            return cell
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return 80
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header") as! SettingsHeaderView

        return header
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 90
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let settings = SettingsModel.settings[indexPath.section][indexPath.row]
        print("Нажата ячейка \(indexPath.row + 1)")
        tableView.deselectRow(at: indexPath, animated: true)
    }
}