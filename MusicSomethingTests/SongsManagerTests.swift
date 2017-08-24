//
//  SongsManagerTests.swift
//  MusicSomethingTests
//
//  Created by Sam Meech-Ward on 2017-08-24.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import XCTest

@testable import MusicSomething

class SongsManagerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_SongManager_alphabetizesSongs() {
        // Arrange
        let songs = [Song(bass: 0, title: "Shwifty", duration: 0), Song(bass: 0, title: "Shit on the Floor", duration: 0), Song(bass: 0, title: "American Pie", duration: 0), Song(bass: 0, title: "Banana Phone", duration: 0), Song(bass: 0, title: "Penut Butter Jelly Time", duration: 0)]
        let songManager = SongManager()
        
        // Act
        let sortedSongs = songManager.sortSongsInAlphabeticalOrder(songs: songs)
        
        // Assert
        XCTAssertEqual(sortedSongs[0].title, "American Pie")
        XCTAssertEqual(sortedSongs[4].title, "Shwifty")
    }
    
    func test_SongManager_longestSong_returnsNilFromEmptyArray() {
        // Arrange
        let songs = [Song]()
        let songManager = SongManager()
        
        // Act
        let song = songManager.longestSong(songs: songs)
        
        // Assert
        XCTAssertNil(song)
    }
    
    func test_SongManager_longestSong_returnsOnlySongFromArrayWithOneSong() {
        // Arrange
        let songs = [Song(bass: 0, title: "", duration:0)]
        let songManager = SongManager()
        
        // Act
        guard let song = songManager.longestSong(songs: songs) else {
            XCTFail("Song was nil and it wasn't supposed to be")
            return
        }
        
        // Assert
        XCTAssertEqual(song, songs[0])
    }
    
    private func longestSongDuration(songs: [Song]) -> Double {
        let songManager = SongManager()
        
        // Act
        guard let song = songManager.longestSong(songs: songs) else {
            XCTFail("Song was nil and it wasn't supposed to be")
            return 0
        }
        
        return song.duration
    }
    
    func test_SongManager_longestSong_returnsLongestSongFromArrayWithMultipleSong() {
        // Assert
        XCTAssertEqual(longestSongDuration(songs: [Song(bass: 0, title: "", duration:290.0), Song(bass: 0, title: "", duration:160)]), 290.0)
        XCTAssertEqual(longestSongDuration(songs: [Song(bass: 0, title: "", duration:290.0), Song(bass: 0, title: "", duration:320)]), 320)
        XCTAssertEqual(longestSongDuration(songs: [Song(bass: 0, title: "", duration:290.0), Song(bass: 0, title: "", duration:4), Song(bass: 0, title: "", duration:600), Song(bass: 0, title: "", duration:1), Song(bass: 0, title: "", duration:320), Song(bass: 0, title: "", duration:519.9999999)]), 600)
    }
}
