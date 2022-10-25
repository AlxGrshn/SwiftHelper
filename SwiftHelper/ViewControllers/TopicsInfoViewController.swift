//
//  RelatedInfoViewController.swift
//  SwiftHelper
//
//  Created by Roman on 26.10.2022.
//

import UIKit

class TopicsInfoViewController: UIViewController {
    
    @IBOutlet var infoLabel: UILabel!
    
    var info: Topic!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = info.theme
    }
}
