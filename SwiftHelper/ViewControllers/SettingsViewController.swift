//
//  SettingsViewController.swift
//  SwiftHelper
//
//  Created by Roman on 25.10.2022.
//

import UIKit

class SettingsViewController: UITableViewController {
    
    var settings: [Settings] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
// MARK: - UITableViewDataSource
extension SettingsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        settings.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settings", for: indexPath)
        let setting = settings[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = setting.theme
        cell.contentConfiguration = content
        
        return cell
    }
}
