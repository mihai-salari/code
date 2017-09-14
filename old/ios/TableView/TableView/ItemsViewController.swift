//
//  ItemsViewController.swift
//  TableView
//
//  Created by Lee Choon Siong on 2017/06/03.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController {
    var itemStore: ItemStore!
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        let insets = UIEdgeInsetsMake(statusBarHeight, 0, CGFloat(20.0), 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
    
    // MARK: - UITableViewController
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.itemStore.allItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an instance of UITableViewCell, with default appearance
        // let cell = UITableViewCell(style: .value1, reuseIdentifier: "UITableViewCell")
        
        // Get a new cell or recycled cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        let item = self.itemStore.allItems[indexPath.row]
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        
        return cell
    }
}
