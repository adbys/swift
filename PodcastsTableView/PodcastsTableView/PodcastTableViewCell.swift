//
//  PodcastTableViewCell.swift
//  PodcastsTableView
//
//  Created by Student on 3/16/17.
//  Copyright © 2017 AJ. All rights reserved.
//

import UIKit

class PodcastTableViewCell: UITableViewCell {

    
    @IBOutlet weak var fotoDoPodcast: UIImageView!
    
    @IBOutlet weak var nomeDoPodcast: UILabel!
    
    
    @IBOutlet weak var descricaoPodcast: UILabel!
    
    var filteredCandies = [Candy]()
    
    func filterContentForSearchText(searchText: String, scope: String = "All") {
        filteredCandies = candies.filter { candy in
            return candy.name.lowercaseString.containsString(searchText.lowercaseString)
        }
        
        tableView.reloadData()
    }
    
    extension MasterViewController: UISearchResultsUpdating {
        func updateSearchResultsForSearchController(searchController: UISearchController) {
            filterContentForSearchText(searchController.searchBar.text!)
        }
    }
    


}
