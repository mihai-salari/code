//
//  ActivitySetupInterfaceController.swift
//  LogMyDay
//
//  Created by Lee Choon Siong on 2017/05/25.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import WatchKit
import Foundation

class ActivitySetupInterfaceController: WKInterfaceController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var locationButton: WKInterfaceButton!
    
    // MARK: - Enums
    
    enum LocationStatus: Int {
        case On
        case Off
    }
    
    // MARK: - Properties
    
    var activity: Activity?
    
    var locationStatus: LocationStatus = .Off
    
    lazy var locationOnFont: NSAttributedString = {
        let boldFont = UIFont.boldSystemFont(ofSize: 15.0)
        let attributes = [NSFontAttributeName: boldFont, NSForegroundColorAttributeName: UIColor.white]
        let text = NSAttributedString(string: "Location On", attributes: attributes)
        
        return text
    }()
    
    lazy var locationOffFont: NSAttributedString = {
        let normalFont = UIFont.systemFont(ofSize: 15.0)
        let attributes = [NSFontAttributeName: normalFont, NSForegroundColorAttributeName: UIColor.white]
        let text = NSAttributedString(string: "Location Off", attributes: attributes)
        
        return text
    }()
    
    // MARK: - WKInterfaceController

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        if let activity = context as? Activity {
            print("ActivitySetupInterfaceController: awake() -> \(activity)")
            
            self.activity = activity
        } else {
            print("ActivitySetupInterfaceController: awake() -> failed to set context")
        }
        
        if let activity = self.activity {
            print("ActivitySetupInterfaceController: awake() -> activity = \(activity)")
        } else {
            print("ActivitySetupInterfaceController: awake() -> activity is nil")
        }
        
        self.toggleLocationStatus()
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
    
    func toggleLocationStatus() {
        switch locationStatus {
        case .On:
            //print("INFO: location status is ON")
            //self.locationButton.setTitle("Location On")
            self.locationButton.setAttributedTitle(locationOffFont)
            self.locationButton.setAlpha(0.7)
            self.locationStatus = .Off
        case .Off:
            //print("INFO: location status is OFF")
            //self.locationButton.setTitle("Location Off")
            self.locationButton.setAttributedTitle(locationOnFont)
            self.locationButton.setAlpha(1.0)
            self.locationStatus = .On
        }
        
        print("ActivitySetupInterfaceController: toggleLocationStatus() -> \(self.locationStatus)")
    }
    
    // MARK: - Actions

    @IBAction func startButtonPressed(_ sender: WKInterfaceButton) {
        print("ActivitySetupInterfaceController: startButtonPressed()")
        
        let names = ["ActivityStartScreen"]
        let contexts: [Any]?
        
        if let activity = activity {
            contexts = [activity]
        } else {
            contexts = nil
        }
        
        if let contexts = contexts {
            print("ActivitySetupInterfaceController: startButtonPressed() -> contexts is \(contexts)")
        }
        
        WKInterfaceController.reloadRootControllers(withNames: names, contexts: contexts)
    }
    
    @IBAction func locationButtonPressed(_ sender: WKInterfaceButton) {
        print("ActivitySetupInterfaceController: locationButtonPressed()")
        
        self.toggleLocationStatus()
    }
}
