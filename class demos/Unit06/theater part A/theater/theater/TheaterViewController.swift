//
//  TheaterViewController.swift
//  theater
//
//  Created by Maximilian Luttrell on 10/1/19.
//  Copyright © 2019 Maximilian Luttrell. All rights reserved.
//

import UIKit

class TheaterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
