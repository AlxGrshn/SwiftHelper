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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            showAlert(with: "Светлая", and: "Темная")
        case 1:
            showAlert(with: "Жирный", and: "Курсив")
        case 2:
            showAlert(with: "Белый", and: "Черный")
        default:
            showAlert(with: "20", and: "30")
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension SettingsViewController {
    
    
    func showAlert(with firstButton: String, and secondButton: String) {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: firstButton, style: .default, handler: { (_) in
           
        }))
        alert.addAction(UIAlertAction(title: secondButton, style: .default, handler: { (_) in
           
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
}
