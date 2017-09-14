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
    var normalItems: [Item]?
    var expensiveItems: [Item]?
    var lastRow: Bool = false
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        let insets = UIEdgeInsetsMake(statusBarHeight, 0, CGFloat(20.0), 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
        
        // Note arrays must be initialized first, else we will not able to add new item
        self.expensiveItems = []
        self.normalItems = []
        
        for item in itemStore.allItems {
            print("Log: item is \(item)")
            
            if item.valueInDollars >= 50 {
                print("Log: adding expensive item")
                expensiveItems?.append(item)
            } else {
                print("Log: adding normal item")
                normalItems?.append(item)
            }
        }
        
        if let expensiveItems = expensiveItems, let normalItems = normalItems {
            print("Log: number of expensive items = \(expensiveItems.count)")
            print("Log: number of normal items = \(normalItems.count)")
        }
    }
    
    // MARK: - UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "First Section"
        case 1:
            return "Second Section"
        default:
            return "Invalid Section"
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let countForValueGreaterThan50 = self.itemStore.getTotalNumberOfItemsGreaterThan(value: 50)
        
        switch section {
        case 0:
            return countForValueGreaterThan50 + 1 // To get one last row for no more item!
        case 1:
            return self.itemStore.allItems.count - countForValueGreaterThan50 + 1 // To get one last row for no more item!
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get a new cell or recycled cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)

        print("Log: IndexPath section is \(indexPath.section), Index Path row is \(indexPath.row)")
        
        var item: Item?
        
        if indexPath.section == 0 {
            if indexPath.row == expensiveItems!.count {
                // this is last row
                lastRow = true
            } else {
                if let items = expensiveItems {
                    item = items[indexPath.row]
                }
                lastRow = false
            }
        } else {
            if indexPath.row == normalItems!.count {
                lastRow = true
            } else {
                if let items = normalItems {
                    item = items[indexPath.row]
                }
                lastRow = false
            }
        }
        
        if lastRow {
            tableView.rowHeight = 44
            
            cell.textLabel?.font = UIFont.systemFont(ofSize: 20)
            cell.textLabel?.textColor = UIColor.lightGray
            cell.textLabel?.text = "No more item!"
            cell.detailTextLabel?.text = ""
            cell.imageView?.image = nil
        } else {
            tableView.rowHeight = 60
            if let item = item {
                cell.textLabel?.text = item.name
                cell.detailTextLabel?.text = "$\(item.valueInDollars)"
            }
        }
        
        return cell
    }
}
