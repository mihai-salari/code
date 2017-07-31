//
//  ViewController.swift
//  XMLParser
//
//  Created by Lee Choon Siong on 2017/06/04.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var parser: Parser?
    
    @IBOutlet weak var subscriberIDLabel: UILabel!
    @IBOutlet weak var subscriptionIDLabel: UILabel!
    @IBOutlet weak var classOfServiceIDLabel: UILabel!
    @IBOutlet weak var msisdnLabel: UILabel!
    @IBOutlet weak var pinLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.subscriberIDLabel.text = "nil"
        self.subscriptionIDLabel.text = "nil"
        self.classOfServiceIDLabel.text = "nil"
        self.msisdnLabel.text = "nil"
        self.pinLabel.text = "nil"
        self.passwordLabel.text = "nil"
        
        if let url = URL(string: "http://choonsiong.com/public/tmp/foo.xml") {
            parser = Parser(contentsOf: url)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func getSubscriberData(_ sender: UIButton) {
        if let parser = parser {
            self.subscriberIDLabel.text = parser.currentXMLFeed?.subscriberID
            self.subscriptionIDLabel.text = parser.currentXMLFeed?.subscriptionID
            self.classOfServiceIDLabel.text = parser.currentXMLFeed?.classOfServiceID
            self.msisdnLabel.text = parser.currentXMLFeed?.msisdn
            
            if let pin = parser.currentXMLFeed?.pin {
                self.pinLabel.text = String(pin)
            }
            
            self.passwordLabel.text = parser.currentXMLFeed?.password
        }
    }
}
