//
//  Track.swift
//  TapALap
//
//  Created by Lee Choon Siong on 2017/05/13.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import Foundation

class Track {
    let name: String
    let lapDistance: Double // in meters
    
    init(name: String, lapDistance: Double) {
        self.name = name
        self.lapDistance = lapDistance
    }
}
