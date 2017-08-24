//
//  SongTests.swift
//  MusicSomethingTests
//
//  Created by Sam Meech-Ward on 2017-08-24.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import XCTest

@testable import MusicSomething

class SongTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_Song_Init_PropertiesGetSetCorrectly() {
        let bass = 4.0
        let title = "Shwifty"
        let druation = Double(arc4random_uniform(100))
        
        let song = Song(bass: bass, title: title, duration: druation)
        
        XCTAssertEqual(song.bass, bass)
        XCTAssertEqual(song.title, title)
        XCTAssertEqual(song.duration, druation)
    }
}
