//
//  RunLogRowController.swift
//  TapALap
//
//  Created by Lee Choon Siong on 2017/05/18.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import WatchKit

class RunLogRowController: NSObject {
    @IBOutlet weak var dateLabel: WKInterfaceLabel!
    @IBOutlet weak var distanceLabel: WKInterfaceLabel!
    @IBOutlet weak var durationLabel: WKInterfaceLabel!

    var dateFormatter: DateFormatter?
    var distanceFormatter: LengthFormatter?
    var durationFormatter: DateComponentsFormatter?
    
    func configure(date: Date, distance: Double, duration: TimeInterval) {
        dateLabel.setText(dateFormatter?.string(from: date))
        distanceLabel.setText(distanceFormatter?.string(fromMeters: distance))
        durationLabel.setText(durationFormatter?.string(from: duration))
    }
}
