//
//  ActivityLogRowController.swift
//  LogMyDay
//
//  Created by Lee Choon Siong on 2017/05/29.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import WatchKit

class ActivityLogRowController: NSObject {
    
    // MARK: - Outlets
    
    @IBOutlet weak var dateLabel: WKInterfaceLabel!
    @IBOutlet weak var activityNameLabel: WKInterfaceLabel!
    @IBOutlet weak var durationLabel: WKInterfaceLabel!
    
    // MARK: - Properties
    
    var dateFormatter: DateFormatter?
    var durationFormatter: DateComponentsFormatter?
    
    // MARK: - Functions
    
    func configure(date: Date, activityName: String, duration: TimeInterval) {
        self.dateLabel.setText(dateFormatter?.string(from: date))
        self.activityNameLabel.setText(activityName)
        self.durationLabel.setText(durationFormatter?.string(from: duration))
    }
}
