//
//  ViewController.swift
//  VideoPlayer
//
//  Created by AIR on 04.10.2018.
//  Copyright © 2018 AIR. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    //OUTLETY
    @IBOutlet weak var tableView: UITableView!
    
    //ZMIENNE
    var videoPlayers = [VideoPlayer] ()
    
    //FUNKCJE LADOWANIA VIEW
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        setupMockupData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    //MOJE FUNKCJE setup
    func setup(){
        tableView.delegate  = self
        tableView.dataSource = self
    }

    func setupMockupData(){
        let p1 = VideoPlayer(imageURL: "https://cdbaby.name/n/o/noresolve14.jpg", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/bnVUHWCynig\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Halo")
        videoPlayers.append(p1)
        let p2 = VideoPlayer(imageURL: "https://cdbaby.name/n/o/noresolve14.jpg", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/fO4OkwNEid0\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Crazy in love")
        videoPlayers.append(p2)
        let p3 = VideoPlayer(imageURL: "https://ukutabs.com/uploads/2012/10/Ghost.jpg", videoURL: "<<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/4m1EFMoRFvY\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Single ladies")
        videoPlayers.append(p3)
        let p4 = VideoPlayer(imageURL: "https://i1.sndcdn.com/artworks-000018833944-vweac6-t500x500.jpg", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/p1JPKLa-Ofc\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Drunk in love")
             videoPlayers.append(p4)
        let p5 = VideoPlayer(imageURL: "https://cdbaby.name/n/o/noresolve14.jpg", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/WDZJPJV__bQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Formation")
        videoPlayers.append(p5)
        let p6 = VideoPlayer(imageURL: "https://cdbaby.name/n/o/noresolve14.jpg", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/k4YRWT_Aldo\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "7/11")
        videoPlayers.append(p6)
        let p7 = VideoPlayer(imageURL: "https://ukutabs.com/uploads/2012/10/Ghost.jpg", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/LXXQLa-5n5w\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Pretty hurts")
        videoPlayers.append(p7)
        let p8 = VideoPlayer(imageURL: "https://i1.sndcdn.com/artworks-000018833944-vweac6-t500x500.jpg", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/HdnTSXUWd3E\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "War of Change")
        videoPlayers.append(p8)
        let p9 = VideoPlayer(imageURL: "https://cdbaby.name/n/o/noresolve14.jpg", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/8ucz_pm3LX8\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Baby boy")
        videoPlayers.append(p9)
        let p10 = VideoPlayer(imageURL: "https://cdbaby.name/n/o/noresolve14.jpg", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/XWCwc1_sYMY\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Party")
        videoPlayers.append(p10)
        let p11 = VideoPlayer(imageURL: "https://ukutabs.com/uploads/2012/10/Ghost.jpg", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/i41qWJ6QjPI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "I was here")
        videoPlayers.append(p11)
        let p12 = VideoPlayer(imageURL: "https://i1.sndcdn.com/artworks-000018833944-vweac6-t500x500.jpg", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/2XY3AvVgDns\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Cut down")
       videoPlayers.append(p12)
        tableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let  destination = segue.destination as? VideoVC {
            if let video = sender as? VideoPlayer {
                destination.videoPlayer = video
            }
        }
    }
    
    //IBACTIONS
    
    
    //TABLE VIEW DATA SOURCE albo collection view.
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoPlayers.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let videoPlayer = videoPlayers[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: videoPlayer)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt   indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as! PartyCell
        let videoPlayer = videoPlayers[indexPath.row]
        cell.updateUI(videoPlayer: videoPlayer)
        
        return cell
    }
}
