//
//  BaseballViewController.swift
//  PlayersTab
//
//  Created by Maximilian Luttrell on 10/17/19.
//  Copyright © 2019 Maximilian Luttrell. All rights reserved.
//

import UIKit

class BaseballViewController: UIViewController {
    @IBOutlet weak var baseballTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        baseballTextView.text = ""
        for p in players {
            if p.sport == .baseball {
                baseballTextView.text = baseballTextView.text + p.name + "\n"
            }
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
