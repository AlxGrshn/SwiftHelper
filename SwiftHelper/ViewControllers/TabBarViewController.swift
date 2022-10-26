//
//  TabBarViewController.swift
//  SwiftHelper
//
//  Created by Roman on 26.10.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
    }
    
    func transferData() {
        viewControllers?.forEach {
            if let topicsVC = $0 as? TopicsViewController {
                let topics = Topic.getTopics()
                topicsVC.topics = topics
            } else if let settingsVC = $0 as? SettingsViewController {
                let settings = Settings.getSettings()
                settingsVC.settings = settings
            } else if let teamVC = $0 as? TeamViewController {
                let team = Team.getTeamInfo()
                teamVC.team = team
            }
        }
    }
}
