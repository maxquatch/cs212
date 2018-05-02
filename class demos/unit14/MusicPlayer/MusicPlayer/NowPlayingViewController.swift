//
//  NowPlayingViewController.swift
//  MusicPlayer
//
//  Created by Max Luttrell on 5/1/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class NowPlayingViewController: UIViewController {
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var trackLabel: UILabel!
    
    var currentTrack: Track?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        artistLabel.text = currentTrack?.artist
        trackLabel.text = currentTrack?.track
        // Do any additional setup after loading the view.
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
