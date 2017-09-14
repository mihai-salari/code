//
//  ViewController.swift
//  BNRThermostat
//
//  Created by Lee Choon Siong on 2017/06/01.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    private var privateTemperature = 28
    
    var temperature = 24
    
    dynamic var dynamicTemperature: Int {
        set {
            print("set temperature to \(newValue)")
            self.privateTemperature = newValue
        }
        
        get {
            print("get temperature")
            return self.privateTemperature
        }
    }
    
    dynamic var isOn = true

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    func changeTemperature(_ temperature: Int) {
        self.temperature += temperature
    }
    
    @IBAction func makeWarmer(_ sender: NSButton) {
        let newTemperature = self.temperature + 1
        setValue(newTemperature, forKey: "temperature")
    }
    
    @IBAction func makeCooler(_ sender: NSButton) {
        let newTemperature = self.temperature - 1
        setValue(newTemperature, forKey: "temperature")
    }
    
    @IBAction func makeSwiftWarmer(_ sender: NSButton) {
        self.willChangeValue(forKey: "temperature")
        self.changeTemperature(1)
        self.didChangeValue(forKey: "temperature")
    }
    
    @IBAction func makeSwiftCooler(_ sender: NSButton) {
        self.dynamicTemperature -= 1
    }
}
