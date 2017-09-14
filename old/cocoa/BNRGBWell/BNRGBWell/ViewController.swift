//
//  ViewController.swift
//  BNRGBWell
//
//  Created by Lee Choon Siong on 2017/05/17.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var colorWell: NSColorWell!
    
    @IBOutlet weak var rSlider: NSSlider!
    @IBOutlet weak var gSlider: NSSlider!
    @IBOutlet weak var bSlider: NSSlider!
    
    var r = 0.5
    var g = 0.5
    var b = 0.5
    var a = 1.0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.rSlider.doubleValue = r
        self.gSlider.doubleValue = g
        self.bSlider.doubleValue = b
        self.updateColor()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    func updateColor() {
        let newColor = NSColor(calibratedRed: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(a))
        self.colorWell.color = newColor
    }
    
    @IBAction func adjustRed(_ sender: NSSlider) {
        print("Red value is \(sender.floatValue)")
        r = sender.doubleValue
        updateColor()
    }
    
    @IBAction func adjustGreen(_ sender: NSSlider) {
        print("Green value is \(sender.floatValue)")
        g = sender.doubleValue
        updateColor()
    }
    
    @IBAction func adjustBlue(_ sender: NSSlider) {
        print("Blue value is \(sender.floatValue)")
        b = sender.doubleValue
        updateColor()
    }
}
