//
//  ActivityLog.swift
//  LogMyDay
//
//  Created by Lee Choon Siong on 2017/05/29.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import Foundation

class ActivityLog {

    let activityName: String
    let startDate: Date
    let duration: TimeInterval
    
    init(activityName: String, startDate: Date, duration: TimeInterval) {
        self.activityName = activityName
        self.startDate = startDate
        self.duration = duration
    }
    
}
