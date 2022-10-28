//
//  RelatedInfoViewController.swift
//  SwiftHelper
//
//  Created by Roman on 26.10.2022.
//

import UIKit

class TopicsInfoViewController: UIViewController {
    
    
    @IBOutlet var infoTextView: UITextView!
    
    var info: Topic!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = info.title
        infoTextView.text = info.description
    }
}
