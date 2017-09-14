//
//  ActivityRowController.swift
//  LogMyDay
//
//  Created by Lee Choon Siong on 2017/05/18.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import WatchKit

class ActivityRowController: NSObject {
    
    // MARK: - Outlets
    
    @IBOutlet weak var activityLabel: WKInterfaceLabel!
    
    // MARK: - Functions
    
    func configure(activity: String) {
        self.activityLabel.setText(activity)
    }
}
