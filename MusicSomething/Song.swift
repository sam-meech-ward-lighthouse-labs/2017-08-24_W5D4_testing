//
//  Song.swift
//  MusicSomething
//
//  Created by Sam Meech-Ward on 2017-08-24.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import UIKit

class Song: NSObject {
    
    var bass: Double
    var lyrics: String?
    var title: String
    var duration: Double
    
    init(bass: Double, title: String, duration: Double) {
        self.bass = bass
        self.title = title
        self.duration = duration
        super.init()
    }
}
