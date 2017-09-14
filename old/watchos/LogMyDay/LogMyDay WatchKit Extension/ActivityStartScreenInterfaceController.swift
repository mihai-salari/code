//
//  ActivityStartScreenInterfaceController.swift
//  LogMyDay
//
//  Created by Lee Choon Siong on 2017/05/25.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import WatchKit
import Foundation

class ActivityStartScreenInterfaceController: WKInterfaceController {
    
    // MARK: - Properties
    
    var startDate: Date?
    var activityName: String?
    var duration: TimeInterval?
    
    // MARK: - WKInterfaceController
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        if let activity = context as? Activity {
            print("ActivityStartScreenInterfaceController: awake() -> \(activity)")
            
            self.activityName = activity.name
        } else {
            print("ActivityStartScreenInterfaceController: awake() -> failed to set context")
        }
        
        if let activityName = self.activityName {
            print("ActivityStartScreenInterfaceController: awake() -> activityName = \(activityName)")
        } else {
            print("ActivityStartScreenInterfaceController: awake() -> activityName is nil")
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        
        super.willActivate()
        
        if self.startDate == nil {
            self.startDate = Date()
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        
        super.didDeactivate()
    }
    
    // MARK: - Functions
    
    func endActivity() {
        print("ActivityStartScreenInterfaceController: endActivity()")
        
        let activityFinishTime = Date()
        
        guard let startDate = startDate else { return }
        
        let totalActivityDuration = activityFinishTime.timeIntervalSince(startDate)
        
        print("ActivityStartScreenInterfaceController: endActivity -> totalActivityDuration = \(totalActivityDuration)")
        
        let names = ["ActivityListScreen", "ActivityLogScreen"]
        let contexts: [AnyObject]?
        
        if let activityName = self.activityName, let startDate = self.startDate {
            let duration = totalActivityDuration
            
            print("ActivityStartScreenInterfaceController: activityName = \(activityName), startDate = \(startDate), duration = \(duration)")
            
            let activityLog = ActivityLog(activityName: activityName, startDate: startDate, duration: duration)
            contexts = [NSNull(), activityLog]
        } else {
            contexts = nil
        }
        
        if let contexts = contexts {
            print("ActivityStartScreenInterfaceController: contexts = \(contexts)")
        }
        
        WKInterfaceController.reloadRootControllers(withNames: names, contexts: contexts)
    }
    
    // MARK: - Actions
    
    @IBAction func stopButtonPressed() {
        print("ActivityStartScreenInterfaceController: stopButtonPressed()")
        
        self.endActivity()
        //let activityFinishTime = Date()
        //guard let startDate = startDate else { return }
        //let totalActivityDuration = activityFinishTime.timeIntervalSince(startDate)
        
        //let names = ["ActivityListScreen", "ActivityLogScreen"]
        //WKInterfaceController.reloadRootControllers(withNames: names, contexts: nil)
    }
}
