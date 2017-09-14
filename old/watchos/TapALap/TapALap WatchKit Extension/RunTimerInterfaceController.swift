//
//  RunTimerInterfaceController.swift
//  TapALap
//
//  Created by Lee Choon Siong on 2017/05/13.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import WatchKit
import Foundation

class RunTimerInterfaceController: WKInterfaceController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var textLabel: WKInterfaceLabel!
    
    // MARK: - Properties
    
    lazy var track: Track = Track(name: "Track", lapDistance: 500)
    
    var lapTimes: [TimeInterval]?
    var startDate: Date?
    
    lazy var lengthFormatter: LengthFormatter = {
        let formatter = LengthFormatter()
        
        formatter.numberFormatter.maximumSignificantDigits = 3
        
        return formatter
    }()
    
    // MARK: - WKInterfaceController

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        
        super.willActivate()
        
        /*
         * If there's no existing run, first check any run stored in the user defaults.
         * If no, then call startRun() to create one.
         */
        
        if lapTimes == nil || startDate == nil {
            let userDefaults = UserDefaults.standard
            
            if let date = userDefaults.object(forKey: "StartDate") as? Date, let times = userDefaults.object(forKey: "LapTimes") as? [TimeInterval] {
                self.startDate = date
                self.lapTimes = times
            } else {
                startRun()
            }
        }
        
        updateDistanceLabel()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        
        super.didDeactivate()
    }
    
    // MARK: - Functions
    
    func updateDistanceLabel() {
        guard let lapTimes = self.lapTimes, !lapTimes.isEmpty else {
            self.textLabel.setText("No laps finished!")
            return
        }
        
        let distance = track.lapDistance * Double(lapTimes.count)
        
        self.textLabel.setText(lengthFormatter.string(fromMeters: distance))
    }
    
    func startRun() {
        self.lapTimes = []
        self.startDate = Date()
        
        let userDefaults = UserDefaults.standard
        
        userDefaults.set(startDate, forKey: "StartDate")
        userDefaults.set(lapTimes, forKey: "LapTimes")
        userDefaults.synchronize()
    }
    
    func endRun() {
        let names = ["GoRunning", "RunLog"]
        let contexts: [AnyObject]?
        
        if let laptimes = self.lapTimes, let startDate = self.startDate {
            let distance = track.lapDistance * Double(laptimes.count)
            let run = Run(distance: distance, laps: laptimes, startDate: startDate)
            contexts = [NSNull(), run]
        } else {
            contexts = nil
        }
        
        WKInterfaceController.reloadRootControllers(withNames: names, contexts: contexts)
    }
    
    // MARK: - Actions
    
    @IBAction func stopRunButtonPressed() {
        endRun()
    }
    
    @IBAction func finishLapButtonPressed() {
        let lapFinishTime = Date()
        
        guard let startDate = self.startDate, let lapTimes = self.lapTimes else { return }
        
        let totalRunDuration = lapFinishTime.timeIntervalSince(startDate)
        
        let cumulativeLapDuration = lapTimes.reduce(0, { $0 + $1 })
        let lapDuration = totalRunDuration - cumulativeLapDuration // 因為時間是從一開始算而已，並不是每一個lap重新開始
        
        self.lapTimes?.append(lapDuration)
        
        updateDistanceLabel()
        
        let userDefaults = UserDefaults.standard
        userDefaults.set(lapTimes, forKey: "LapTimes")
        userDefaults.synchronize()
    }
}
