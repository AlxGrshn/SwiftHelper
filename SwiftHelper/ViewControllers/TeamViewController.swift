//
//  TeamViewController.swift
//  SwiftHelper
//
//  Created by Roman on 26.10.2022.
//

import UIKit

class TeamViewController: UITableViewController {
    
    var team: [Team] = Team.getTeamInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .darkGray
    }
}

// MARK: - UITableViewDataSource
extension TeamViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        team.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        team[section].broInfo.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "team", for: indexPath)
        
        let bro = team[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        content.text = bro.broInfo[indexPath.row]
        
        switch indexPath.row {
        case 0:
            content.image = UIImage(systemName: Pictures.telegram.rawValue)
        default:
            content.image = UIImage(systemName: Pictures.git.rawValue)
        }

        //cell.backgroundColor = .lightGray
        cell.contentConfiguration = content
        return cell
    }
}

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
        
        infoLabel.text = team[section].name
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
