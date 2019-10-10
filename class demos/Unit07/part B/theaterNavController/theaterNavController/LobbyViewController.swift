//
//  LobbyViewController.swift
//  theaterNavController
//
//  Created by Maximilian Luttrell on 10/8/19.
//  Copyright © 2019 Maximilian Luttrell. All rights reserved.
//

import UIKit

class LobbyViewController: UIViewController {

    var name: String?
    
    @IBOutlet weak var welcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let n = name {
            welcomeLabel.text = "Hello, \(n)"
        }
        // Do any additional setup after loading the view.
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
