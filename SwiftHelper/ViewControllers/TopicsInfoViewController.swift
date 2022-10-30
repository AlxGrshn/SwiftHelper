//
//  RelatedInfoViewController.swift
//  SwiftHelper
//
//  Created by Roman on 26.10.2022.
//

import UIKit

class TopicsInfoViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var infoTextView: UITextView!
    @IBOutlet var infoImageView: UIImageView!
    
    // MARK: - Public properties
    var info: Topic!
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = info.title
        infoTextView.text = info.description
        
        infoImageView.image = UIImage(named: info.title)
    }

}
