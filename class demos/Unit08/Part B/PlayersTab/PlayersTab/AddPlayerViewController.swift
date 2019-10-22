//
//  AddPlayerViewController.swift
//  PlayersTab
//
//  Created by Maximilian Luttrell on 10/17/19.
//  Copyright © 2019 Maximilian Luttrell. All rights reserved.
//

import UIKit

class AddPlayerViewController: UIViewController {

    @IBOutlet weak var playerTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButton(_ sender: Any) {
        if let n = playerTextField.text {
            let p = Player(name: n, sport: .baseball, rating: 5)
            players.append(p)
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
