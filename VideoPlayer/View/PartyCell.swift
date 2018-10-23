//
//  PartyCell.swift
//  VideoPlayer
//
//  Created by AIR on 05.10.2018.
//  Copyright © 2018 AIR. All rights reserved.
//

import UIKit
import Kingfisher

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    func updateUI(videoPlayer: VideoPlayer){
        videoTitle.text = videoPlayer.videoTitle
        let url = URL(string: videoPlayer.imageURL)!
        videoPreviewImage.kf.setImage(with: url)
    }

}
