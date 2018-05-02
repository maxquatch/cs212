//
//  NowPlayingViewController.swift
//  MusicPlayer
//
//  Created by Max Luttrell on 5/1/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit
import AVFoundation

class NowPlayingViewController: UIViewController {
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var trackLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    
    var currentTrack: Track?
    var player = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        artistLabel.text = currentTrack?.artist
        trackLabel.text = currentTrack?.track
        albumLabel.text = currentTrack?.collectionName
        // Do any additional setup after loading the view.
        
        // play the track
        if let previewURLString = currentTrack?.previewURL,
            let previewURL = URL(string: previewURLString) {
            player = AVPlayer(url: previewURL)
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
