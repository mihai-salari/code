//
//  InterfaceController.swift
//  Password WatchKit Extension
//
//  Created by Lee Choon Siong on 2017/07/02.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var passwordButton: WKInterfaceButton!
    
    let password = Password()

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        self.setButtonTitle(with: password.generateRandomString())
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func generateNewPassword() -> String {
        return password.generateRandomString()
    }
    
    func setButtonTitle(with string: String) {
        self.passwordButton.setTitle(string)
    }
    
    @IBAction func newPassword() {
        let newPassword = generateNewPassword()
        self.setButtonTitle(with: newPassword)
    }

}
