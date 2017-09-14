//
//  ViewController.swift
//  BNRGBWellBinding
//
//  Created by Lee Choon Siong on 2017/06/01.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import Cocoa


class ViewController: NSViewController {
    
    private var _color: NSColor?
    
    dynamic var r: Double = 0.5 {
        didSet {
            self.updateColor()
        }
    }
    
    dynamic var g: Double = 0.5 {
        didSet {
            self.updateColor()
        }
    }
    
    dynamic var b: Double = 0.5 {
        didSet {
            self.updateColor()
        }
    }
    
    dynamic var color: NSColor? {
        set {
            if let color = newValue {
                print("setting new color to \(color)")
            } else {
                print("setting new color to nil")
            }
            
            self._color = newValue
        }
        
        get {
            if let color = self._color {
                print("exiting color is \(color)")
                return color
            } else {
                print("exiting color is nil")
                return nil
            }
        }
    }
    
    class func keyPathsForValuesAffectingColor() -> NSSet {
        return Set(["r", "g", "b"]) as NSSet
    }
    
    func updateColor() {
        let newColor = NSColor(calibratedRed: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(1.0))
        self.color = newColor
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.updateColor()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

