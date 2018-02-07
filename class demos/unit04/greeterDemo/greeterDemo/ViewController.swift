//
//  ViewController.swift
//  greeterDemo
//
//  Created by Max Luttrell on 2/6/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var greetLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func cheatButton(_ sender: UIButton) {
        print("cheat")
    }
    
    @IBAction func countButton(_ sender: Any) {
        if nameTextField.hasText {
            countLabel.text = String(nameTextField.text!.count)
        } else {
            countLabel.text = "0"
        }
        
    }
    @IBAction func greetButton(_ sender: UIButton) {
        print("greet button")
        
        if nameTextField.hasText {
            if nameTextField.text != nil {
                greetLabel.text = "hello " + nameTextField.text! + "!"
            }
        } else {
            greetLabel.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("viewDidLoad was called")        
    }

}

