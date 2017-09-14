//
//  TodoList.swift
//  BNRiTahDoodle
//
//  Created by Lee Choon Siong on 2017/06/19.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class TodoList: NSObject {
    fileprivate var items: [String] = []
    
    private let fileURL: URL = {
        let documentDirectoryURLs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        print(documentDirectoryURLs)
        
        let documentDirectoryURL = documentDirectoryURLs.first!
        print(documentDirectoryURL)
        
        return documentDirectoryURL.appendingPathComponent("todolist.items")
    }()
    
    override init() {
        super.init()
        self.loadItems()
    }
    
    override var description: String {
        return "TodoList: \(items.count)"
    }
    
    func saveItems() {
        let itemsArray = items as NSArray
        
        print("\(#function): saving items to \(fileURL)")
        if !itemsArray.write(to: fileURL, atomically: true) {
            print("\(#function): could not save to-do list")
        }
    }
    
    func loadItems() {
        if let itemsArray = NSArray(contentsOf: fileURL) as? [String] {
            items = itemsArray
        }
    }
    
    func add(_ item: String) {
        items.append(item)
        self.saveItems()
    }
}

// Note that because we have a modal here, so we conform to the UITableViewDataSource protocol here,
// instead of in the ViewController file.
extension TodoList: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let item = items[indexPath.row]
        cell.textLabel?.text = item
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            print("\(#function): removing item at \(indexPath.row)")
            
            items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
