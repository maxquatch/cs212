//
//  TheaterViewController.swift
//  theater
//
//  Created by Maximilian Luttrell on 10/1/19.
//  Copyright © 2019 Maximilian Luttrell. All rights reserved.
//

import UIKit

class TheaterViewController: UIViewController {
    @IBOutlet weak var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       // print("TheaterViewController: theater.name is \(theater.name)")
        
        if let name = theater.name {
            greetingLabel.text = "Hello, \(name)"
        }
        
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
