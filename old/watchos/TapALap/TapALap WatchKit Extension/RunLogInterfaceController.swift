//
//  RunLogInterfaceController.swift
//  TapALap
//
//  Created by Lee Choon Siong on 2017/05/18.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import WatchKit
import Foundation

class RunLogInterfaceController: WKInterfaceController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var runTable: WKInterfaceTable!
    
    // MARK: - Properties
    
    var runs: [Run]?
    
    lazy var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        
        return dateFormatter
    }()
    
    lazy var distanceFormatter = LengthFormatter()
    
    lazy var durationFormatter: DateComponentsFormatter = {
        let dateComponentsFormatter = DateComponentsFormatter()
        dateComponentsFormatter.unitsStyle = .positional
        
        return dateComponentsFormatter
    }()
    
    // MARK: - init()
    
    override init() {
        print("DEBUG: RunLogInterfaceController -> init()")
        print("DEBUG: RunLogInterfaceController -> setting up test data")
        
        srand48(time(UnsafeMutablePointer<time_t>(bitPattern: 0)))
        
        let randomRun: (Date) -> Run = {
            date in
            let lapCount = arc4random_uniform(20) + 5
            let lapDistance = arc4random_uniform(1000) + 1
            
            var laps: [TimeInterval] = []
            
            for _ in 0 ..< lapCount {
                let speed = 3.0 + (drand48() - 0.5)
                let lapDuration: TimeInterval = Double(lapDistance) / speed
                
                laps.append(lapDuration)
            }
            
            let run = Run(distance: Double(lapDistance * lapCount), laps: laps, startDate: date)
            
            return run
        }
        
        runs = []
        
        for i in 0 ..< 10 {
            runs?.append(randomRun(Date().addingTimeInterval(Double(i) * 24 * 24 * 60)))
        }
        
        print("DEBUG: RunLogInterfaceController -> test data populated into runs[]")
        
        if let runs = runs {
            print("DEBUG: RunLogInterfaceController -> runs[] -> \(runs)")
        } else {
            print("DEBUG: RunLogInterfaceController -> runs[] -> nil")
        }
    }
    
    // MARK: - WKInterfaceController

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        if let run = context as? Run {
            runs?.insert(run, at: 0)
            
            runTable.insertRows(at: IndexSet(integer: 0), withRowType: "RunRow")
            
            if let rowc = runTable.rowController(at: 0) as? RunLogRowController {
                configureRow(rowController: rowc, forRun: run)
            }
            
            becomeCurrentPage()
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        
        super.willActivate()
        
        guard let runs = runs else { return }
        
        self.runTable.setNumberOfRows(runs.count, withRowType: "RunRow")
        
        for i in 0 ..< self.runTable.numberOfRows {
            guard let rowController = self.runTable.rowController(at: i) as? RunLogRowController else { continue }
            self.configureRow(rowController: rowController, forRun: runs[i])
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        print("User tapped on row \(rowIndex)")
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> Any? {
        if segueIdentifier == "ShowRunDetails" {
            guard let runs = runs, runs.count > rowIndex else {
                return nil
            }
            
            return runs[rowIndex]
        }
        
        return nil
    }
    
    // MARK: - Functions
    
    func configureRow(rowController: RunLogRowController, forRun run: Run) {
        print("DEBUG: RunLogInterfaceController -> configureRow()")
        
        rowController.dateFormatter = dateFormatter
        rowController.distanceFormatter = distanceFormatter
        rowController.durationFormatter = durationFormatter
        
        rowController.configure(date: run.startDate, distance: run.distance, duration: run.duration)
    }
}
