//
//  TeamViewController.swift
//  SwiftHelper
//
//  Created by Roman on 26.10.2022.
//

import UIKit

class TeamViewController: UITableViewController {
    
    private let team = Team.getMembersInfo()
    private let appDescription = AppDescription.getAppDescription()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutAppVC = segue.destination as? AboutTeamViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        aboutAppVC.teamMember = team[indexPath.row]
    }
}

// MARK: - UITableViewDataSource
extension TeamViewController {
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        2
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        team.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = team[indexPath.row].fullName

        cell.contentConfiguration = content
        return cell
    }
}

// MARK: - UITableViewDelegate
extension TeamViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let infoLabel = UILabel(
            frame: CGRect(
                x: 16,
                y: 3,
                width: tableView.frame.width,
                height: 20
            )
        )
        infoLabel.text = "Команда"
        
        setup(infoLabel)
        
        let contentView = UIView()
        contentView.addSubview(infoLabel)
        
        return contentView
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.backgroundColor = .lightGray
    }
    
    func setup(_ label: UILabel) {
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .white
    }
}
