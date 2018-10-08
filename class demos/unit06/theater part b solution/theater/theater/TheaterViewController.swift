//
//  TheaterViewController.swift
//  theater
//
//  Created by Max Luttrell on 2/27/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class TheaterViewController: UIViewController {
    
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var welcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("TheaterViewController viewDidLoad was called \(score)")
    
        // could improve this to put a default message if textfield is empty
        if theater.name != nil {
            welcomeLabel.text = "Welcome, \(theater.name!)!"
        }
     
        if theater.promo == theater.freeCode {
            costLabel.text = "Enjoy your free movie!"
        } else {
            costLabel.text = "Please go buy a ticket."
        }
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)

    }
    
}
