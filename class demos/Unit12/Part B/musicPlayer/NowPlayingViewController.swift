//
//  NowPlayingViewController.swift
//  musicPlayer
//
//  Created by Maximilian Luttrell on 11/26/19.
//  Copyright © 2019 Maximilian Luttrell. All rights reserved.
//

import UIKit
import AVFoundation

class NowPlayingViewController: UIViewController {

    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var trackLabel: UILabel!
    
    var currentTrack: Track?
    var player = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let track = currentTrack {
            artistLabel.text = track.artist
            trackLabel.text = track.track
            
            if let previewUrlString = track.previewUrl,
                let previewUrl = URL(string: previewUrlString)
                {
                    player = AVPlayer(url: previewUrl)
                    player.play()
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
