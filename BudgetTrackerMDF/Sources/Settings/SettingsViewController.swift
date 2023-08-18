//
//  SettingsViewController.swift
//  BudgetTrackerMDF
//
//  Created by i0240 on 18.08.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    // MARK: - Outlets

    private lazy var settingsTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
//        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
//        tableView.register(HeaderView.self, forHeaderFooterViewReuseIdentifier: "header")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupHierarchy() {
        view.addSubview(settingsTableView)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            settingsTableView.topAnchor.constraint(equalTo: view.topAnchor),
            settingsTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            settingsTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            settingsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}


// MARK: - UITableViewDataSource, UITableViewDelegate

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        6
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let item = SettingsModel.settings[indexPath.section][indexPath.row]

//        switch(item.cellType) {
//        case .switchButton:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "switchCell", for: indexPath) as! SwitchButtonTableViewCell
//            cell.settings = item
//            return cell
//        case .none:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SimpleTableViewCell
//            cell.settings = item
//            return cell
//        case .label:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "labelCell", for: indexPath) as! LabelTableViewCell
//            cell.settings = item
//            return cell
//        }
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header") as! HeaderView
//        return header
        return UIView()
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let settings = SettingsModel.settings[indexPath.section][indexPath.row]
        print("Нажата ячейка \(settings.title)")
//        delegate?.routeToDetails(with: settings)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
