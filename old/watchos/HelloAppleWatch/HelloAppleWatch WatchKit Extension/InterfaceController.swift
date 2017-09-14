//
//  InterfaceController.swift
//  HelloAppleWatch WatchKit Extension
//
//  Created by Lee Choon Siong on 2017/07/02.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    let emoji = EmojiData()
    
    @IBOutlet weak var button: WKInterfaceButton!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        showFortune()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func showFortune() {
        let peopleIndex = emoji.people.count.random()
        let actionIndex = emoji.action.count.random()
        let natureIndex = emoji.nature.count.random()
        
        button.setTitle("\(emoji.nature[natureIndex])\(emoji.action[actionIndex])\(emoji.people[peopleIndex])")

    }
    
    @IBAction func newFortune() {
        showFortune()
    }

}
