//
//  LobbyViewController.swift
//  theaterNavController
//
//  Created by Max Luttrell on 10/10/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class LobbyViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let n = name {
            if n == "" {
                welcomeLabel.text = "Welcome!"
            } else {
                welcomeLabel.text = "Welcome, \(n)!"
            }
        }
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
