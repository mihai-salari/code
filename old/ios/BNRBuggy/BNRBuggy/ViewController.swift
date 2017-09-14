//
//  ViewController.swift
//  BNRBuggy
//
//  Created by Lee Choon Siong on 2017/06/03.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func badMethod() {
        let array = NSMutableArray()
        
        for i in 0 ..< 10 {
            array.insert(i, at: i)
        }
        
        for _ in 0 ... 10 { // Bug 😂
            array.removeObject(at: 0)
        }
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        // Caveman debugging
        
        //print("buttonTapped")
        //print("sender is \(sender)")
        //print("Is control on? \(sender.isOn)")
        
        // Using literal expression for debugging
        print("Method: \(#function) in file: \(#file) line: \(#line) called.")
        
        badMethod()
    }
}
