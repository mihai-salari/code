//
//  ViewController.swift
//  BasicAnimationWithContraints
//
//  Created by Lee Choon Siong on 2017/06/03.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabelCenterXConstraint: NSLayoutConstraint!
    @IBOutlet weak var redLabelCenterXConstraint: NSLayoutConstraint!

    var words = ["Hello World!", "Good morning!", "How are you?"]
    var currentWordsIndex = 0
    
    let yellow: UIColor = UIColor.yellow
    let green: UIColor = UIColor.green

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.redLabel.text = words[currentWordsIndex]
        self.updateOffScreenLabel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.blueLabel.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateOffScreenLabel() {
        let screenWidth = view.frame.width
        blueLabelCenterXConstraint.constant = -screenWidth
    }
    
    func animateLabelTransitions() {
        view.layoutIfNeeded()
        
        let screenWidth = view.frame.width
        
        self.blueLabelCenterXConstraint.constant = 0
        self.redLabelCenterXConstraint.constant += screenWidth
        
        UIView.animate(withDuration: 1.0,
                       delay: 0,
                       options: [.curveLinear],
                       animations:
            {
                self.redLabel.alpha = 0
                self.redLabel.backgroundColor = self.yellow
                self.blueLabel.alpha = 1
                self.blueLabel.backgroundColor = self.green
                self.view.layoutIfNeeded()
            },
                       completion:
            {
                _ in
                swap(&self.redLabel, &self.blueLabel)
                swap(&self.redLabelCenterXConstraint, &self.blueLabelCenterXConstraint)
                self.updateOffScreenLabel()
            })
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        currentWordsIndex += 1
        
        if currentWordsIndex == words.count {
            currentWordsIndex = 0
        }
        
        self.blueLabel.text = words[currentWordsIndex]
        
        self.animateLabelTransitions()
    }
}
