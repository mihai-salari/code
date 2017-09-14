//
//  ViewController.swift
//  BNRSpeakLine
//
//  Created by Lee Choon Siong on 2017/05/22.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSSpeechSynthesizerDelegate, NSWindowDelegate, NSTableViewDataSource, NSTableViewDelegate {
    
    // MARK: - Properties

    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var speakButton: NSButton!
    @IBOutlet weak var stopButton: NSButton!
    
    @IBOutlet weak var tableView: NSTableView!
    
    let speechSynth = NSSpeechSynthesizer()
    
    let voices = NSSpeechSynthesizer.availableVoices()
    
    var isSpeaking: Bool = false {
        didSet {
            updateButtons()
        }
    }
    
    // MARK: - Overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.updateButtons()
        self.speechSynth.delegate = self
        
        //print(voices)
        
        /*for voice in voices {
            print(voiceNameForIdentifier(voice)!)
        }*/
        
        let defaultVoice = NSSpeechSynthesizer.defaultVoice()
        
        if let defaultRow = self.voices.index(of: defaultVoice) {
            let indices = NSIndexSet(index: defaultRow)
            self.tableView.selectRowIndexes(indices as IndexSet, byExtendingSelection: false)
            self.tableView.scrollRowToVisible(defaultRow)
        }
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    // MARK: - NSSpeechSynthesizerDelegate
    
    func speechSynthesizer(_ sender: NSSpeechSynthesizer, didFinishSpeaking finishedSpeaking: Bool) {
        self.isSpeaking = false
        print("finishedSpeaking = \(finishedSpeaking)")
    }
    
    // MARK: - NSWindowDelegate
    
    // Following two methods will not get called due to window property is 
    // nil, we are storyboard, something is different... where is the Window?
    
    func windowWillClose(_ notification: Notification) {
        print("windowWillClose is called")
    }
    
    func windowShouldClose(_ sender: Any) -> Bool {
        print("windowShouldClose is called")
        return !isSpeaking
    }
    
    // MARK: - NSTableViewDataSource
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return self.voices.count
    }
    
    func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any? {
        let voice = self.voices[row]
        let voiceName = self.voiceNameForIdentifier(voice)
        
        return voiceName
    }
    
    // MARK: - NSTableViewDelegate
    
    func tableViewSelectionDidChange(_ notification: Notification) {
        let row = self.tableView.selectedRow
        
        // Set the voice back to the default if the user has deselected all rows
        if row == -1 {
            self.speechSynth.setVoice(nil)
            return
        }
        
        let voice = voices[row]
        print("Selected voice: \(voice)")
        
        self.speechSynth.setVoice(voice)
    }
    
    // MARK: - Actions
    
    @IBAction func speakIt(_ sender: NSButton) {
        let message = self.textField.stringValue
        
        if message.isEmpty {
            print("Message is empty")
            self.speechSynth.startSpeaking("Sorry, the message is empty! Don't fuck me!")
        } else {
            print("You entered: \"\(message)\"")
            self.speechSynth.startSpeaking(message)
            self.isSpeaking = true
        }
    }
    
    @IBAction func stopIt(_ sender: NSButton) {
        print("Stop button clicked")
        self.speechSynth.stopSpeaking()
        //self.isSpeaking = false
    }
    
    // MARK: - Functions
    func updateButtons() {
        if self.isSpeaking {
            self.speakButton.isEnabled = false
            self.stopButton.isEnabled = true
        } else {
            self.stopButton.isEnabled = false
            self.speakButton.isEnabled = true
        }
    }
    
    func voiceNameForIdentifier(_ identifier: String) -> String? {
        let attributes = NSSpeechSynthesizer.attributes(forVoice: identifier)
        
        //print(attributes)
        
        if let voiceName = attributes[NSVoiceName] {
            return voiceName as? String
        } else {
            return nil
        }
    }
}
