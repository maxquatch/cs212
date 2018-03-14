//
//  ViewController.swift
//  theaterNavController
//
//  Created by Max Luttrell on 3/13/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var name = "Matt"
    var pass = "PASS"
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var promoTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nameTextField.delegate = self
        promoTextField.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("segue prepare called")
        
        if segue.identifier == "LobbySegue" {
            segue.destination.navigationItem.title = "Vestibulo"
            //segue.destination.welcomeLabel.text = name
            
            let nextViewController = segue.destination as? LobbyViewController
            
            if let nvc = nextViewController {
                //nvc.welcomeLabel.text = name
                nvc.name = name
            }
        }
        else if segue.identifier == "PromoSegue" {
            segue.destination.navigationItem.title = "Promo"
            //segue.destination.welcomeLabel.text = name
            
            let nextViewController = segue.destination as? PromoViewController
            
            if let nvc = nextViewController {
                //nvc.welcomeLabel.text = name
                nvc.name = nameTextField.text
                nvc.pass = promoTextField.text
            }

        }
    }

}

