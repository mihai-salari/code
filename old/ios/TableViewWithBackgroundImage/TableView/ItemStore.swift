//
//  ItemStore.swift
//  TableView
//
//  Created by Lee Choon Siong on 2017/06/03.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    init() {
        for _ in 0 ..< 5 {
            self.createItem()
        }
    }
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        self.allItems.append(newItem)
        
        return newItem
    }
    
    func isValueOf(item: Item, greaterThan value: Int) -> Bool {
        if item.valueInDollars >= value {
            return true
        } else {
            return false
        }
    }
    
    func getTotalNumberOfItemsGreaterThan(value: Int) -> Int {
        var count = 0
        
        for item in allItems {
            if isValueOf(item: item, greaterThan: value) {
                count += 1
            }
        }
        
        return count
    }
}
