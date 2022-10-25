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
        guard let topicsVC = viewControllers?.first as? TopicsViewController else { return }
        guard let settingsVC = viewControllers?.last as? SettingsViewController else { return }
        
        let topics = Topic.getTopics()
        let settings = Settings.getSettings()
        topicsVC.topics = topics
        settingsVC.settings = settings
    }
}
