//
//  ViewController.swift
//  theater
//
//  Created by Maximilian Luttrell on 10/1/19.
//  Copyright © 2019 Maximilian Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.resignFirstResponder()
        
        theater.name = nameTextField.text
        
        return true
    }
    @IBAction func goButton(_ sender: Any) {
        theater.name = nameTextField.text
        performSegue(withIdentifier: "theaterSegue", sender: nil)
    }
    
}

