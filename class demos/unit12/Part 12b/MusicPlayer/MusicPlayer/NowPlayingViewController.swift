//
//  NowPlayingViewController.swift
//  MusicPlayer
//
//  Created by Max Luttrell on 12/5/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit
import AVFoundation

class NowPlayingViewController: UIViewController {

    var player = AVPlayer()
    
    var currentTrack: Track?
    
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var trackLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        artistLabel.text = currentTrack?.artist
        trackLabel.text = currentTrack?.track
        
        if let previewUrl = URL(string: (currentTrack?.previewUrl)!) {
            player = AVPlayer(url: previewUrl)
            player.play()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
