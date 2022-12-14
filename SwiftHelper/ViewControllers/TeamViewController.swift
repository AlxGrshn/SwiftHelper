//
//  TeamViewController.swift
//  SwiftHelper
//
//  Created by Roman on 26.10.2022.
//

import UIKit

class TeamViewController: UITableViewController {
    
    // MARK: - Private properties
    private let team = Team.getMembersInfo()
    private let appDescription = AppDescription.getAppDescription()
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutAppVC = segue.destination as? AboutTeamViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        switch indexPath.section {
            case 0: aboutAppVC.appDescription = appDescription
            default: aboutAppVC.teamMember = team[indexPath.row]
        }
    }
}

// MARK: - UITableViewDataSource
extension TeamViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 1
        default: return team.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.section {
              case 0: content.text = "Описание"
              default: content.text = team[indexPath.row].fullName
        }

        cell.layer.cornerRadius = 12
        cell.layer.borderColor = UIColor.systemBackground.cgColor
        cell.layer.borderWidth = 3
        cell.backgroundColor = .systemGray6
        
        cell.contentConfiguration = content
        return cell
    }
}

// MARK: - UITableViewDelegate
extension TeamViewController {
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let infoLabel = UILabel(
            frame: CGRect(
                x: 16,
                y: 3,
                width: tableView.frame.width,
                height: 20
            )
        )
        
        switch section {
            case 0: infoLabel.text = "О приложении"
            default: infoLabel.text = "Команда"
        }
        
        setup(infoLabel)
        let contentView = UIView()
        contentView.addSubview(infoLabel)
        return contentView
    }
  
    func setup(_ label: UILabel) {
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .secondaryLabel
    }
}
