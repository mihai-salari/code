//
//  InterfaceController.swift
//  HelloWatch WatchKit Extension
//
//  Created by Lee Choon Siong on 2017/05/13.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var label: WKInterfaceLabel!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func showButtonPressed() {
        self.label.setText("Hello!")
    }
    
    @IBAction func hideButtonPressed() {
        self.label.setText("")        
    }

}
