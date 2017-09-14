//
//  FavoritePlace1.swift
//  BNRWorldTrotter
//
//  Created by Lee Choon Siong on 2017/05/24.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit
import MapKit

// This is for reference only

class FavoritePlace1: NSObject, MKAnnotation {
    lazy var coordinate: CLLocationCoordinate2D = {
        return CLLocationCoordinate2DMake(5.891145, 102.746745)
    }()
}
