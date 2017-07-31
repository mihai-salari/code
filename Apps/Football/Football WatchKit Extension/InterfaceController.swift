//
//  InterfaceController.swift
//  Football WatchKit Extension
//
//  Created by Lee Choon Siong on 2017/05/14.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import WatchKit
import Foundation

enum ButtonDirection: String {
    case Up = "↑"
    case Down = "↓"
    case Left = "←"
    case Right = "→"
}

class InterfaceController: WKInterfaceController {
    
    let ballSize: CGSize = CGSize(width: 20.0, height: 20.0)
    var currentInsets: UIEdgeInsets = UIEdgeInsets.zero
    
    var fieldSize: CGSize {
        var frame = contentFrame
        frame.size.height -= 44
        
        return frame.size
    }
    
    var verticalDirection: ButtonDirection = .Down {
        didSet {
            self.verticalButton.setTitle(verticalDirection.rawValue)
        }
    }

    var horizontalDirection: ButtonDirection = .Right {
        didSet {
            self.horizontalButton.setTitle(horizontalDirection.rawValue)
        }
    }
    
    let kickDistance: CGFloat = 10.0
    let kickDuration = 1.0 / 3.0
    
    @IBOutlet weak var football: WKInterfaceGroup!
    @IBOutlet weak var field: WKInterfaceGroup!
    @IBOutlet weak var verticalButton: WKInterfaceButton!
    @IBOutlet weak var horizontalButton: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func verticalButtonPressed() {
        if verticalDirection == .Down {
            currentInsets.top += kickDistance
            
            if currentInsets.top + ballSize.height + kickDistance > fieldSize.height {
                verticalDirection = .Up
            }
        } else {
            currentInsets.top -= kickDistance
            
            if currentInsets.top - kickDistance < 0 {
                verticalDirection = .Down
            }
        }
        
        animate(withDuration: kickDuration) {
            self.field.setContentInset(self.currentInsets)
        }
    }
    
    @IBAction func horizontalButtonPressed() {
        if horizontalDirection == .Right {
            currentInsets.left += kickDistance
            
            if currentInsets.left + ballSize.width + kickDistance > fieldSize.width {
                horizontalDirection = .Left
            }
        } else {
            currentInsets.left -= kickDistance
            
            if currentInsets.left - kickDistance < 0 {
                horizontalDirection = .Right
            }
        }
        
        animate(withDuration: kickDuration) {
            self.field.setContentInset(self.currentInsets)
        }
    }
}
