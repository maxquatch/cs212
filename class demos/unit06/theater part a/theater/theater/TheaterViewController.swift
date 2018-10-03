//
//  TheaterViewController.swift
//  theater
//
//  Created by Max Luttrell on 10/3/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class TheaterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
