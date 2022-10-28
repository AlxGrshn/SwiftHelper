//
//  TopicViewController.swift
//  SwiftHelper
//
//  Created by Roman on 25.10.2022.
//

import UIKit

class TopicsViewController: UITableViewController {
    
    var topics: [Topic] = Topic.getTopics()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
        navigationItem.leftBarButtonItem = editButtonItem
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let relatedInfoVC = segue.destination  as? TopicsInfoViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        relatedInfoVC?.info = topics[indexPath.row]
    }
}

// MARK: - UITableViewDataSource
extension TopicsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        topics.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topic", for: indexPath)
        let topic = topics[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = topic.title
        cell.contentConfiguration = content
        
        return cell
    }
}

// MARK: - UITableViewDelegete
extension TopicsViewController {
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentTopic = topics.remove(at: sourceIndexPath.row)
        topics.insert(currentTopic, at: destinationIndexPath.row)
    }
}
