//
//  Run.swift
//  TapALap
//
//  Created by Lee Choon Siong on 2017/05/18.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import Foundation

class Run {
    
    // MARK: - Properties
    
    let distance: Double // in meters
    let laps: [TimeInterval]
    let startDate: Date
    
    var duration: TimeInterval {
        return laps.reduce(0, +)
    }
    
    var pace: TimeInterval {
        return self.duration / TimeInterval(self.laps.count)
    }
    
    // MARK: - Initializers
    
    init(distance: Double, laps: [TimeInterval], startDate: Date) {
        self.distance = distance
        self.laps = laps
        self.startDate = startDate
    }
}
