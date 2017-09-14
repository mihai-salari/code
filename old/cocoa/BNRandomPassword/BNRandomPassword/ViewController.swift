//
//  ViewController.swift
//  BNRandomPassword
//
//  Created by Lee Choon Siong on 2017/05/08.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var textField: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func generatePassword(_ sender: AnyObject) {
        //self.textField.stringValue = "password generated"
        
        let length = 8
        let password = generateRandomString(withLength: length)
        
        self.textField.stringValue = password
    }

}

