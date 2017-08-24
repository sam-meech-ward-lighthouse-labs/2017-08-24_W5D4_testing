//
//  SongManager.swift
//  MusicSomething
//
//  Created by Sam Meech-Ward on 2017-08-24.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import UIKit

class SongManager: NSObject {

    func sortSongsInAlphabeticalOrder(songs: [Song]) -> [Song] {
        let stortedSongs = songs.sorted { (song1, song2) -> Bool in
            
            let song1TitleBeforeSong2Title: Bool = song1.title < song2.title
            
            return song1TitleBeforeSong2Title
            
        }
        
        return stortedSongs
    }
    
    func longestSong(songs: [Song]) -> Song? {
        if songs.isEmpty {
            return nil
        }
        
        return songs.max { (song1, song2) -> Bool in
            return song1.duration < song2.duration
        }
    }
    
}
