//
//  ViewController.swift
//  BNRVocalTextEdit
//
//  Created by Lee Choon Siong on 2017/06/18.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    let speechSynthesizer = NSSpeechSynthesizer()

    var contents: String? {
        get {
            return textView.string
        }
        
        set {
            textView.string = newValue
        }
    }
    
    
    @IBOutlet weak var textView: NSTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func speakButtonClicked(_ sender: NSButton) {
        if let content = textView.string, !content.isEmpty {
            print("\(#function) called with content: \(content)")
            self.speechSynthesizer.startSpeaking(content)
        } else {
            print("\(#function) called with empty content")
            self.speechSynthesizer.startSpeaking("What the fuck?")
        }
    }
    
    @IBAction func stopButtonClicked(_ sender: NSButton) {
        print("\(#function) called")
        
        self.speechSynthesizer.stopSpeaking()
    }
}
