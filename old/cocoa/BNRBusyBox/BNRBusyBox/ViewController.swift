//
//  ViewController.swift
//  BNRBusyBox
//
//  Created by Lee Choon Siong on 2017/05/17.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    var sliderValue: Int = 0
    var sliderOriginalValue: Int = 50
    
    @IBOutlet weak var secureTextField: NSSecureTextField!
    @IBOutlet weak var normalTextField: NSTextField!
    @IBOutlet weak var showSecretTextButton: NSButton!
    
    @IBOutlet weak var checkButton: NSButton!
    
    @IBOutlet weak var slider: NSSlider!
    @IBOutlet weak var sliderLabel: NSTextField!
    
    @IBOutlet weak var showTickmarksButton: NSButton!
    @IBOutlet weak var hideTickmarksButton: NSButton!
    
    @IBOutlet weak var resetControlsButton: NSButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.checkButton.state = 0
        self.checkButton.title = "Check me"
        self.hideTickmarksButton.state = 1
        self.showTickmarksButton.state = 0
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func showSecretTextButtonPressed(_ sender: NSButton) {
        self.normalTextField.stringValue = self.secureTextField.stringValue
    }
    
    @IBAction func checkButtonClicked(_ sender: NSButton) {
        //print(sender.state)
        
        if sender.state == 0 {
            self.checkButton.title = "Check me"
        } else {
            self.checkButton.title = "Uncheck me"
        }
    }
    
    @IBAction func sliderDragged(_ sender: NSSlider) {
        self.sliderValue = sender.integerValue
        
        //print("sliderValue: \(sliderValue)")
        //print("sliderOriginalValue: \(sliderOriginalValue)")
        
        if sliderValue >= sliderOriginalValue {
            //print("Slider value goes up")
            self.sliderOriginalValue = sliderValue
            self.sliderLabel.stringValue = "Slider goes up!"
        } else {
            //print("Slider value goes down")
            self.sliderOriginalValue = sliderValue
            self.sliderLabel.stringValue = "Slider goes down!"
        }
    }
    
    @IBAction func showHideTickmarksButtonsPressed(_ sender: NSButton) {
        //print(sender.tag)
        
        if sender.tag == 1 {
            // show tickmarks button pressed
            self.slider.numberOfTickMarks = 10
        } else {
            self.slider.numberOfTickMarks = 0
        }
    }
    
    @IBAction func resetControlsButtonPressed(_ sender: NSButton) {
        self.normalTextField.stringValue = ""
        self.secureTextField.stringValue = ""
        self.checkButton.state = 0
        self.checkButton.title = "Check me"
        self.slider.integerValue = 50
        self.sliderLabel.stringValue = ""
        self.slider.numberOfTickMarks = 0
        self.showTickmarksButton.state = 0
        self.hideTickmarksButton.state = 1
    }

}

