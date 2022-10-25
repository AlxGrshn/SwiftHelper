//
//  TopicViewController.swift
//  SwiftHelper
//
//  Created by Roman on 25.10.2022.
//

import UIKit

class TopicsViewController: UITableViewController {
    
    var topics: [Topic] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
    }
}

// MARK: - UITableViewDataSource
extension TopicsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        topics.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topics", for: indexPath)
        let topic = topics[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = topic.theme
        cell.contentConfiguration = content
        
        return cell
    }
}
