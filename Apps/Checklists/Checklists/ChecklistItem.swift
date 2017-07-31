//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Lee Choon Siong on 2017/07/02.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var isChecked = false
    
    func toggleChecked() {
        isChecked = !isChecked
    }
}
