//
//  ViewController.swift
//  TextField
//
//  Created by Lee Choon Siong on 2017/05/28.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func textFieldEditingChanged(_ sender: UITextField) {
        if let text = sender.text {
            self.textView.text = text
        }        
    }

}

