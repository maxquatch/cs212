//
//  ViewController.swift
//  UpperTextField
//
//  Created by Max Luttrell on 2/20/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var upperTextField: UITextField!
    @IBOutlet weak var fiveTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // make our ViewController class the delegate of the TextField
        upperTextField.delegate = self
        fiveTextField.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == upperTextField {
            print("Upper text field called textFieldShouldReturn")
        }
        if textField == fiveTextField {
            print("fiveTextField called textFieldShouldReturn")
        }

        textField.resignFirstResponder()
        return true
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("shouldChangeCharactersIn called with \(string) and range.location is \(range.location)")
        var allowChange = true
        
        if textField == fiveTextField {
            if string == "" || range.location < 5 {
                allowChange = true
            } else {
                allowChange = false
            }
        }
        if textField == upperTextField {
            if string == "" {
                allowChange = true
            } else {
                if textField.text != nil {
                    textField.text! += string.uppercased()
                    allowChange = false
                }
            }
        }
        return allowChange
    }
    
}








