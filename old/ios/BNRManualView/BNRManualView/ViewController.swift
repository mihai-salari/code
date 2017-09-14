//
//  ViewController.swift
//  BNRManualView
//
//  Created by Lee Choon Siong on 2017/05/14.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let firstFrame = CGRect(x: 10, y: 0, width: 100, height: 150)
        let firstView = UIView(frame: firstFrame)
        firstView.backgroundColor = UIColor.blue
        
        let secondFrame = CGRect(x:10, y: 10, width: 50, height: 50)
        let secondView = UIView(frame: secondFrame)
        secondView.backgroundColor = UIColor.green
        
        view.addSubview(firstView)
        //view.addSubview(secondView)
        firstView.addSubview(secondView)
        
        print(firstView.superview)
        print(secondView.superview)
        print(self.view.superview)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

