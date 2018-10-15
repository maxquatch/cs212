//
//  ViewController.swift
//  theaterNavController
//
//  Created by Max Luttrell on 10/10/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare called")
        
        if segue.identifier == "lobbySegue" {
            if let destVC = segue.destination as? LobbyViewController {
                destVC.name = nameTextField.text
            }
        }
    }
}

