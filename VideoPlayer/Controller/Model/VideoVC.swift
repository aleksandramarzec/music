//
//  VideoVC.swift
//  VideoPlayer
//
//  Created by AIR on 05.10.2018.
//  Copyright © 2018 AIR. All rights reserved.
//

import UIKit
import WebKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var videoPlayer: VideoPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let video = videoPlayer {
                self.titleLabel.text = video.videoTitle
                self.webView.loadHTMLString(video.videoURL, baseURL: nil)
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
