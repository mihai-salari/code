//
//  LapDetailRowController.swift
//  TapALap
//
//  Created by Lee Choon Siong on 2017/05/25.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import WatchKit

class LapDetailRowController: NSObject {
    
    // MARK: - Outlets
    
    @IBOutlet weak var lapNumberLabel: WKInterfaceLabel!
    @IBOutlet weak var lapDurationLabel: WKInterfaceLabel!
    
    // MARK: - Properties
    
    lazy var durationFormatter: DateComponentsFormatter = {
        let durationFormatter  = DateComponentsFormatter()
        durationFormatter.unitsStyle = .positional
        
        return durationFormatter
    }()
    
    // MARK: - Functions
    
    func configureForLap(lap: TimeInterval, atIndex index: UInt) {
        lapDurationLabel.setText(durationFormatter.string(from: lap))
        lapNumberLabel.setText("\(index + 1)")
    }
}
