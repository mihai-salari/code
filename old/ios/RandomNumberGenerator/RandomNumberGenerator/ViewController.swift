//
//  ViewController.swift
//  RandomNumberGenerator
//
//  Created by Lee Choon Siong on 2017/06/03.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateRandomPassword() -> Int {
        // generate a random number between 0 and 99
        let randomNumber = arc4random_uniform(100)
        
        return Int(randomNumber)
    }
    
    @IBAction func generateButtonTapped(_ sender: UIButton) {
        print("generateButtonTapped")
        
        self.label.text = String(generateRandomPassword())
    }

}
