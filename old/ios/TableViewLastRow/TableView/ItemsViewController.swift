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
    var lastRow: Bool = false
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        let insets = UIEdgeInsetsMake(statusBarHeight, 0, CGFloat(20.0), 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
    
    // MARK: - UITableViewDegate
    
    override func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "Remove"
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        // Update the model
        itemStore.moveItem(from: sourceIndexPath.row, to: destinationIndexPath.row)
    }
    
    // MARK: - UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.itemStore.allItems.count + 1 // + 1 here is important
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an instance of UITableViewCell, with default appearance
        // let cell = UITableViewCell(style: .value1, reuseIdentifier: "UITableViewCell")
        
        // Get a new cell or recycled cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        print("Log: IndexPath section is \(indexPath.section), Index Path row is \(indexPath.row)")
        
        var item: Item?
        
        // + 1 above affects this!
        if indexPath.row == itemStore.allItems.count {
            lastRow = true
        } else {
            item = itemStore.allItems[indexPath.row]
            lastRow = false
        }
        
        if lastRow {
            cell.textLabel?.text = "No more item"
            cell.textLabel?.textAlignment = .center
            cell.detailTextLabel?.text = ""
        } else {
            if let item = item {
                cell.textLabel?.text = item.name
                cell.detailTextLabel?.text = "$\(item.valueInDollars)"
            }
        }
            
//        let item = self.itemStore.allItems[indexPath.row]
//        cell.textLabel?.text = item.name
//        cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        // If the table view is asking to commit a delete command...
        if editingStyle == .delete {
            
            if indexPath.row == itemStore.allItems.count {
                print("\(#function): cannot delete last row")
            } else {
                let item = itemStore.allItems[indexPath.row]
                
                // Remove the item from the store
                itemStore.removeItem(item)
                
                // Also remove that row from the table view with an animation
                tableView.deleteRows(at: [indexPath], with: .automatic)
            }
            
            //let item = itemStore.allItems[indexPath.row]
            
            // Remove the item from the store
            //itemStore.removeItem(item)
            
            // Also remove that row from the table view with an animation
            //tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    // MARK: - Actions
    
    @IBAction func addNewItem(_ sender: UIButton) {
        // Create a new item and add it to the store
        let newItem = itemStore.createItem()
        
        // Figure out where that item is in the array
        if let index = itemStore.allItems.index(of: newItem) {
            let indexPath = IndexPath(row: index, section: 0)
            
            // Insert this new row into the table
            tableView.insertRows(at: [indexPath], with: .automatic)
        }
        
        // Make a new index path for the 0th section, last row
        //let lastRow = tableView.numberOfRows(inSection: 0)
        //let indexPath = IndexPath(row: lastRow, section: 0)
        
        // Insert this new row into the table
        //tableView.insertRows(at: [indexPath], with: .automatic)
    }
    
    @IBAction func toggleEditingMode(_ sender: UIButton) {
        if isEditing {
            sender.setTitle("Edit", for: .normal)
            setEditing(false, animated: true)
        } else {
            sender.setTitle("Done", for: .normal)
            setEditing(true, animated: true)
        }
    }
}
