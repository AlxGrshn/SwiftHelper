//
//  TopicViewController.swift
//  SwiftHelper
//
//  Created by Roman on 25.10.2022.
//

import UIKit

class TopicsViewController: UITableViewController {
    
    // MARK: Private properties
    private let searchController = UISearchController(searchResultsController: nil)
    private var filteredTopics: [Topic] = []
    private var topics: [Topic] = Topic.getTopics()
    private var searchBarIsEmpty: Bool {
        guard let text = searchController.searchBar.text else { return false }
        return text.isEmpty
    }
    private var isFiltering: Bool {
        searchController.isActive && !searchBarIsEmpty
    }
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
        
        navigationItem.leftBarButtonItem = editButtonItem
        
        // Setup Search Controller
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Введите тему"
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let relatedInfoVC = segue.destination  as? TopicsInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let topic: Topic
        if isFiltering {
            topic = filteredTopics[indexPath.row]
        } else {
            topic = topics[indexPath.row]
        }
        relatedInfoVC.info = topic
    }
}

// MARK: - UITableViewDataSource
extension TopicsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering {
            return filteredTopics.count
        }
        return topics.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topic", for: indexPath)
        let topic: Topic
        
        if isFiltering {
            topic = filteredTopics[indexPath.row]
        } else {
            topic = topics[indexPath.row]
        }
        
        cell.layer.cornerRadius = 12
        cell.layer.borderColor = UIColor.systemBackground.cgColor
        cell.layer.borderWidth = 3
        cell.backgroundColor = .systemGray6
        
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

// MARK: - UISearchResult Updating and UISearchControllerDelegate  Extension
extension TopicsViewController: UISearchResultsUpdating, UISearchControllerDelegate {
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text ?? "")
    }
    
    private func filterContentForSearchText(_ searchText: String) {
        filteredTopics = topics.filter({ (topics: Topic) -> Bool in
            topics.title.lowercased().contains(searchText.lowercased())
        })
        tableView.reloadData()
    }
}
