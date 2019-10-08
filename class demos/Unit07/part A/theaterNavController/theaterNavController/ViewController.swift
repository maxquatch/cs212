//
//  ViewController.swift
//  theaterNavController
//
//  Created by Maximilian Luttrell on 10/8/19.
//  Copyright © 2019 Maximilian Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare called")
        if segue.identifier == "LobbySegue" {
            let nextViewController = segue.destination as? LobbyViewController
            if let nextVC = nextViewController {
                nextVC.name = nameTextField.text
            }
        }
    }

}

