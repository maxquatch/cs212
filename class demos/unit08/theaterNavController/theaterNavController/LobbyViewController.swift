//
//  LobbyViewController.swift
//  theaterNavController
//
//  Created by Max Luttrell on 3/13/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class LobbyViewController: UIViewController {

    var name: String?
    
    @IBOutlet weak var welcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        if name == nil {
            welcomeLabel.text = "Welcome to the theater!"
        } else {
            welcomeLabel.text = "Welcome to the theater, \(name!)!"
        }
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
