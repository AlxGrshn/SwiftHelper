//
//  MainViewController.swift
//  SwiftHelper
//
//  Created by Roman on 30.10.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    private let info = AppDescription.getAppDescription()
    
    @IBOutlet var aboutAppLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutAppLabel.text = info
    }
    
}
