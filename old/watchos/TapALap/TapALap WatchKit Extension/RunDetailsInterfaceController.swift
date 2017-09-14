//
//  RunDetailsInterfaceController.swift
//  TapALap
//
//  Created by Lee Choon Siong on 2017/05/25.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import WatchKit
import Foundation


class RunDetailsInterfaceController: WKInterfaceController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var runDateLabel: WKInterfaceLabel!
    @IBOutlet weak var runDistanceLabel: WKInterfaceLabel!
    @IBOutlet weak var runPaceLabel: WKInterfaceLabel!
    @IBOutlet weak var lapsTable: WKInterfaceTable!
    
    // MARK: - Properties
    
    lazy var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        return dateFormatter
    }()

    // MARK: - WKInterfaceController
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        if let run = context as? Run {
            configureForRun(run: run)
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        
        super.didDeactivate()
    }
    
    // MARK: - Functions
    
    func configureForRun(run: Run) {
        self.runDateLabel.setText(dateFormatter.string(from: run.startDate))
        
        let lengthFormatter = LengthFormatter()
        self.runDistanceLabel.setText(lengthFormatter.string(fromMeters: run.distance))
        
        self.lapsTable.setNumberOfRows(run.laps.count, withRowType: "LapRow")
        
        for i in 0 ..< self.lapsTable.numberOfRows {
            if let rowController = self.lapsTable.rowController(at: i) as? LapDetailRowController {
                let lapTime: TimeInterval = run.laps[i]
                rowController.configureForLap(lap: lapTime, atIndex: UInt(i))
            }
        }
        
        let paceFormatter = DateComponentsFormatter()
        self.runPaceLabel.setText(paceFormatter.string(from: run.pace))
    }
}
