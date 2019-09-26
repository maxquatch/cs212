//
//  ViewController.swift
//  textFieldDemo
//
//  Created by Maximilian Luttrell on 9/26/19.
//  Copyright © 2019 Maximilian Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var upperTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad")
        upperTextField.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        upperTextField.resignFirstResponder()
        return true
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("shouldChangeCharacters range \(range), string \(string)")

        if textField == upperTextField {
            if string == "" {
                return true // it's a backspace, let it through
            } else {
                // convert to uppercase
                if upperTextField.text != nil {
                    upperTextField.text! += string.uppercased()
                }
                return false
            }
        } else { // it must be another text field
            return true
        }
    }
}

