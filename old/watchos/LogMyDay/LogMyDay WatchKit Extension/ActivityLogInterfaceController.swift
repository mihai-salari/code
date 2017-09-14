//
//  ActivityLogInterfaceController.swift
//  LogMyDay
//
//  Created by Lee Choon Siong on 2017/05/28.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import WatchKit
import Foundation

class ActivityLogInterfaceController: WKInterfaceController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var activityLogTable: WKInterfaceTable!
    
    // MARK: - Properties
    
    var activityLogs: [ActivityLog]?
    
    lazy var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        
        return dateFormatter
    }()
    
    lazy var durationFormatter: DateComponentsFormatter = {
        let dateComponentsFormatter = DateComponentsFormatter()
        dateComponentsFormatter.unitsStyle = .positional
        
        return dateComponentsFormatter
    }()
    
    // MARK: - init
    
    override init() {
        srand48(time(UnsafeMutablePointer<time_t>(bitPattern: 0)))
        
        let randomActivityLog: (Date) -> ActivityLog = {
            date in
            //let lapCount = arc4random_uniform(20) + 5
            //let lapDistance = arc4random_uniform(1000) + 1
            
            //var laps: [TimeInterval] = []
            
            //for _ in 0 ..< lapCount {
            //  let speed = 3.0 + (drand48() - 0.5)
            //  let lapDuration: TimeInterval = Double(lapDistance) / speed
            //  laps.append(lapDuration)
            //}
            
            let activityLog = ActivityLog(activityName: "test", startDate: date, duration: 102160.0)
            //let run = Run(distance: Double(lapDistance * lapCount), laps: laps, startDate: date)
            
            //return run
            return activityLog
        }
        
        //runs = []
        activityLogs = []
        
        for i in 0 ..< 10 {
            //runs?.append(randomRun(Date().addingTimeInterval(Double(i) * 24 * 24 * 60)))
            activityLogs?.append(randomActivityLog(Date().addingTimeInterval(Double(i) * 24 * 24 * 60)))
        }
    }

    // MARK: - WKInterfaceController
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        if let activityLog = context as? ActivityLog {
            activityLogs?.insert(activityLog, at: 0)
            activityLogTable.insertRows(at: IndexSet(integer: 0), withRowType: "ActivityLogRow")
            
            if let rowc = activityLogTable.rowController(at: 0) as? ActivityLogRowController {
                configureRow(rowController: rowc, forActivityLog: activityLog)
            }
            
            //becomeCurrentPage()
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        
        super.willActivate()
        
        guard let activityLogs = activityLogs else { return }
        
        self.activityLogTable.setNumberOfRows(activityLogs.count, withRowType: "ActivityLogRow")
        
        for i in 0 ..< activityLogTable.numberOfRows {
            guard let rowController = activityLogTable.rowController(at: i) as? ActivityLogRowController else { continue }
            
            configureRow(rowController: rowController, forActivityLog: activityLogs[i])
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        
        super.didDeactivate()
    }
    
    // MARK: - WKInterfaceTable
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        print("ActivityLogInterfaceController: User tapped on row \(rowIndex)")
    }
    
    // MARK: - Functions
    
    func configureRow(rowController: ActivityLogRowController, forActivityLog activityLog: ActivityLog) {
        rowController.dateFormatter = dateFormatter
        rowController.durationFormatter = durationFormatter
        
        rowController.configure(date: activityLog.startDate, activityName: activityLog.activityName, duration: activityLog.duration)
    }
}
