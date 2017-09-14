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

    // Removed below init() after we are able to add item from the UI
//    init() {
//        for _ in 0 ..< 5 {
//            self.createItem()
//        }
//    }
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        self.allItems.append(newItem)
        
        return newItem
    }
}
