//
//  ActivitiesInterfaceController.swift
//  LogMyDay
//
//  Created by Lee Choon Siong on 2017/05/18.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import WatchKit
import Foundation

class ActivitiesInterfaceController: WKInterfaceController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var activityTable: WKInterfaceTable!
    
    // MARK: - Properties
    
    var activities: [Activity]?
    
    // MARK: - WKInterfaceController
    
    override init() {
        
        print("ActivitiesInterfaceController: init() -> setting test data")
        
        // Some test data
        
        activities = [Activity(name: "Food"), Activity(name: "Exercise"), Activity(name: "Work"), Activity(name: "Study"), Activity(name: "Sleep"), Activity(name: "Game"), Activity(name: "Entertainment")]
        
    }

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        print("ActivitiesInterfaceController: willActivate()")
        
        // This method is called when watch view controller is about to be visible to user
        
        super.willActivate()
        
        guard let activities = activities else { return }
        
        activityTable.setNumberOfRows(activities.count, withRowType: "ActivityRow")
        
        for i in 0 ..< activityTable.numberOfRows {
            guard let rowController = activityTable.rowController(at: i) as? ActivityRowController else { continue }
            configureRow(rowController: rowController, forActivity: activities[i])
        }
        
        print("ActivitiesInterfaceController: willActivate() -> test data populated")
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        
        super.didDeactivate()
    }
    
    // MARK: - WKInterfaceTable
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        print("ActivitiesInterfaceController: row selected -> \(rowIndex)")
        
        if let activities = activities {
            print("ActivitiesInterfaceController: row selected -> \(activities[rowIndex].name)")
        }
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> Any? {
        
        if segueIdentifier == "ShowSetupScreen" {
            guard let activities = activities, activities.count > rowIndex else {
                return nil
            }
            
            print("ActivitiesInterfaceController: contextForSegue -> \(activities[rowIndex])")
            return activities[rowIndex]
        }
        
        return nil
    }
    
    // MARK: - Functions
    
    func configureRow(rowController: ActivityRowController, forActivity activity: Activity) {
        rowController.configure(activity: activity.name)
    }
}
