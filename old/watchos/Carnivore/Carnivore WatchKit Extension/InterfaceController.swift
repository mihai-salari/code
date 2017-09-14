//
//  InterfaceController.swift
//  Carnivore WatchKit Extension
//
//  Created by Lee Choon Siong on 2017/07/02.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    
    var timerRunning = false
    var usingMetric = false
    var ounces = 16 // 1 pound
    var cookTemp = MeatTemperature.medium
    
    @IBOutlet weak var timer: WKInterfaceTimer!
    @IBOutlet weak var timerButton: WKInterfaceButton!
    @IBOutlet weak var weightLabel: WKInterfaceLabel!
    @IBOutlet weak var cookLabel: WKInterfaceLabel!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        updateConfiguration()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func updateConfiguration() {
        cookLabel.setText(cookTemp.stringValue)
        
        var weight = ounces
        var unit = "oz"
        
        if usingMetric {
            let grams = Double(ounces) * 28.3495
            weight = Int(grams)
            unit = "gm"
        }
        
        weightLabel.setText("Weight: \(weight) \(unit)")
    }
    
    @IBAction func onTimerButton() {
        if timerRunning {
            timer.stop()
            timerButton.setTitle("Start Timer")
        } else {
            let time = cookTemp.cookTime(for: ounces)
            timer.setDate(Date(timeIntervalSinceNow: time))
            timer.start()
            timerButton.setTitle("Stop Timer")
        }
        
        timerRunning = !timerRunning
    }
    
    @IBAction func onMinusButton() {
        ounces -= 1
        updateConfiguration()
    }
    
    @IBAction func onPlusButton() {
        ounces += 1
        updateConfiguration()
    }
    
    @IBAction func onTempChange(value: Float) {
        if let temp = MeatTemperature(rawValue: Int(value)) {
            cookTemp = temp
            updateConfiguration()
        }
    }
    
    @IBAction func onMetricChanged(_ value: Bool) {
        usingMetric = value
        updateConfiguration()
    }
}
