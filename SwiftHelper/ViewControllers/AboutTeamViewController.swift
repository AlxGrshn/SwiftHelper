//
//  AboutAppViewController.swift
//  SwiftHelper
//
//  Created by Artemy Volkov on 28.10.2022.
//

import UIKit

class AboutTeamViewController: UIViewController {
    
    @IBOutlet var textView: UITextView!
    @IBOutlet var avatar: UIImageView!
    
    var appDescription: String?
    var teamMember: Team?
    
    override func viewDidLoad() {
        if teamMember != nil {
            textView.text =
                    """
                    👨‍💻\(teamMember?.fullName ?? "")
                    
                    ☁️GitHub: \(teamMember?.git ?? "")
                    
                    📱Telegram: \(teamMember?.telegram ?? "")
                    """
            avatar.image = UIImage(named: teamMember?.name ?? "")
        } else if appDescription != nil {
            textView.text = appDescription
            avatar.image = UIImage(named: "logo")
        }
    }
    
    override func viewWillLayoutSubviews() {
        avatar.layer.cornerRadius = avatar.frame.width / 2
    }
}
