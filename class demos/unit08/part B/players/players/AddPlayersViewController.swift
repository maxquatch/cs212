//
//  AddPlayersViewController.swift
//  players
//
//  Created by Max Luttrell on 10/17/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class AddPlayersViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func addButton(_ sender: UIButton) {
        if let name = nameTextField.text {
            players.append(Player(name: name, sport: .baseball, rating: 5))
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
