//
//  VideoPlayer.swift
//  VideoPlayer
//
//  Created by AIR on 05.10.2018.
//  Copyright © 2018 AIR. All rights reserved.
//

import Foundation

class VideoPlayer {
    
    var imageURL: String!
    var videoURL: String!
    var videoTitle: String!
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        self.imageURL = imageURL
        self.videoURL = videoURL
        self.videoTitle = videoTitle
    }
}

