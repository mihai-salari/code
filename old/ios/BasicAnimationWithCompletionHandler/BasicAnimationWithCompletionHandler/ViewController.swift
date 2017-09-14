//
//  ViewController.swift
//  BasicAnimationWithCompletionHandler
//
//  Created by Lee Choon Siong on 2017/06/02.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var greyLabel: UILabel!
    @IBOutlet weak var yellowLabel: UILabel!
    
    var words = ["Hello World!", "Good morning!", "How are you?"]
    var currentWordsIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.yellowLabel.text = words[currentWordsIndex]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.greyLabel.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animateTransition() {
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       options: [],
                       animations:
                        {
                            self.yellowLabel.alpha = 0
                            self.greyLabel.alpha = 1
                        },
                       completion:
                        {
                            _ in
                            swap(&self.yellowLabel, &self.greyLabel)
    
                        })
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        currentWordsIndex += 1
        
        if currentWordsIndex == words.count {
            currentWordsIndex = 0
        }
        
        let word = words[currentWordsIndex]
        self.greyLabel.text = word
        
        self.animateTransition()
    }
}
