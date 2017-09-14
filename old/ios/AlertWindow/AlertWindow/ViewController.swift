//
//  ViewController.swift
//  AlertWindow
//
//  Created by Lee Choon Siong on 2017/06/11.
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
    
    @IBAction func hitMeButtonTapped() {
        let alert = UIAlertController(title: "Hello World!",
                                      message: "This is my first alert!",
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome",
                                   style: .default,
                                   handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}
