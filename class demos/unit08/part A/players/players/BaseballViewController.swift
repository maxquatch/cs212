//
//  BaseballViewController.swift
//  players
//
//  Created by Max Luttrell on 10/17/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class BaseballViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        textView.text = ""
        for player in players {
            if player.sport == .baseball {
                textView.text = textView.text + player.name + "\n"
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
