//
//  Media.swift
//  MyRadio
//
//  Created by Lee Choon Siong on 2017/05/27.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

struct Media {
    enum MediaType: String {
        case mp3
        case podcast
        case radio
        case unknown
    }
    
    var mediaName: String
    var mediaType: MediaType
    var mediaURL: String
}
