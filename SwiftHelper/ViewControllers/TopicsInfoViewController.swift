//
//  RelatedInfoViewController.swift
//  SwiftHelper
//
//  Created by Roman on 26.10.2022.
//

import UIKit

class TopicsInfoViewController: UIViewController {
    
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var textView: UITextView!
    
    var info: Topic!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = info.title
        infoLabel.text = info.title
        textView.text = ThemesStorage.shared.themes.values.first
    }
}
