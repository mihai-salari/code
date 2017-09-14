//
//  TrackConfigurationInterfaceController.swift
//  TapALap
//
//  Created by Lee Choon Siong on 2017/05/25.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import WatchKit
import Foundation

protocol TrackSelectionReceiver: class {
    func receiveTrack(track: Track)
}

class TrackConfigurationInterfaceController: WKInterfaceController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var nameButton: WKInterfaceButton!
    @IBOutlet weak var lapsPicker: WKInterfacePicker!
    @IBOutlet weak var distancePicker: WKInterfacePicker!
    
    // MARK: - Properties
    
    weak var trackReceiver: TrackSelectionReceiver?
    var selectedName: String?
    var selectedLaps: Int?
    var selectedDistance: Double?
    
    // MARK: - WKInterfaceController

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        if let receiver = context as? TrackSelectionReceiver {
            self.trackReceiver = receiver            
        }
        
        // Add 1-10 laps for laps picker
        
        let lapItems: [WKPickerItem] = (1 ... 10).map {
            i in
            let pickerItem = WKPickerItem()
            pickerItem.title = "\(i)"
            pickerItem.caption = (i == 1) ? "Lap" : "Laps"
            
            return pickerItem
        }
        
        self.lapsPicker.setItems(lapItems)
        
        // Add 0.5 - 6.5 kilometers for total distance picker
        var distanceItems: [WKPickerItem] = []
        
        let distanceFormatter = LengthFormatter()
        distanceFormatter.numberFormatter.minimumFractionDigits = 1
        distanceFormatter.numberFormatter.maximumFractionDigits = 1
        
        let resultStride = stride(from: 0.5, to: 6.5, by: 0.5)
        
        for i in resultStride.enumerated() {
            let pickerItem = WKPickerItem()
            pickerItem.title = distanceFormatter.string(fromValue: i.element, unit: .kilometer)
            distanceItems.append(pickerItem)
        }
        
        self.distancePicker.setItems(distanceItems)
        
        // Set values based on initial picker values
        self.lapsPickerDidChange(selectedIndex: 0)
        self.distancePickerDidChange(selectedIndex: 0)
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        
        super.didDeactivate()
    }
    
    // MARK: - Actions
    
    @IBAction func nameButtonPressed() {
        let suggestedTrackNames = ["Gym", "School", "Park", "Trail", "Neighborhood"]
        
        presentTextInputController(withSuggestions: suggestedTrackNames, allowedInputMode: .plain) {
            results in
            guard let name = results?.first as? String else { return }
            self.nameButton.setTitle(name)
            self.selectedName = name
        }
    }
    
    @IBAction func lapsPickerDidChange(selectedIndex i: Int) {
        self.selectedLaps = i + 1
    }
    
    @IBAction func distancePickerDidChange(selectedIndex i: Int) {
        // Convert from kilometers to meters
        self.selectedDistance = Double(i + 1) / 2.0 * 1000 // We have to divide it by 2 here because we start with a value of 0.5
    }
    
    @IBAction func saveButtonPressed() {
        guard let name = self.selectedName else {
            presentAlert(withTitle: "Error", message: "You must select a name for your track", preferredStyle: .alert, actions: [
                WKAlertAction(title: "OK", style: .default, handler: {})
                ])
            
            return
        }
        
        guard let laps = self.selectedLaps, let distance = self.selectedDistance else {
            fatalError("No laps/distance selected. Double check your implementation" + " of awakeWithContext(_:)!")
        }
        
        let lapDistance = distance / Double(laps)
        let track = Track(name: name, lapDistance: lapDistance)
        
        self.trackReceiver?.receiveTrack(track: track)
    }

}
