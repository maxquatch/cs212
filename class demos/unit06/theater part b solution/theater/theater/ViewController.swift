//
//  ViewController.swift
//  theater
//
//  Created by Max Luttrell on 2/27/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

var score = 2

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var promoTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("ViewController viewDidLoad was called \(score)")
        
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn was called")
        textField.resignFirstResponder()
        
        theater.name = nameTextField.text
        theater.promo = promoTextField.text
        
        return true
    }
    @IBAction func goButton(_ sender: UIButton) {
        theater.name = nameTextField.text
        theater.promo = promoTextField.text

        performSegue(withIdentifier: "goSegue", sender: self)
        
    }
}

