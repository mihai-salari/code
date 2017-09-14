//
//  InterfaceController.swift
//  TapALap WatchKit Extension
//
//  Created by Lee Choon Siong on 2017/05/13.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import WatchKit
import Foundation


class GoRunningInterfaceController: WKInterfaceController, TrackSelectionReceiver {
    
    // MARK: - Outlets
    
    @IBOutlet weak var trackNameLabel: WKInterfaceLabel!
    @IBOutlet weak var trackDistanceLabel: WKInterfaceLabel!
    
    // MARK: - Properties
    
    var selectedTrack: Track?
    
    lazy var distanceFormatter = LengthFormatter()
    
    // MARK: - WKInterfaceController

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        
        super.willActivate()
        
        self.updateTrackLabels()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        
        super.didDeactivate()
    }
    
    // MARK: - TrackSelectionReceiver
    
    func receiveTrack(track: Track) {
        self.selectedTrack = track
        self.updateTrackLabels()
        self.dismiss()
    }
    
    // MARK: - Functions
    
    func updateTrackLabels() {
        if let track = selectedTrack {
            self.trackNameLabel.setText(track.name)
            self.trackDistanceLabel.setText(distanceFormatter.string(fromMeters: track.lapDistance))
        } else {
            self.trackNameLabel.setText("None")
            self.trackDistanceLabel.setText(nil)
        }
    }
    
    // MARK: - Actions

    @IBAction func trackButtonPressed() {
        presentController(withName: "TrackConfiguration", context: self)
    }
    
    @IBAction func startRunButtonPressed() {
        guard let track = selectedTrack else {
            presentAlert(withTitle: "Error", message: "You need to select a track to run on!", preferredStyle: .alert, actions: [
                WKAlertAction(title: "OK", style: .default, handler: {})])
            
            return
        }
        
        let names = ["RunTimer"]
        
        WKInterfaceController.reloadRootControllers(withNames: names, contexts: [track])
    }
}
