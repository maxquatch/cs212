//
//  MovieViewController.swift
//  theaterNavController
//
//  Created by Maximilian Luttrell on 10/10/19.
//  Copyright © 2019 Maximilian Luttrell. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {
    @IBAction func startOverButton(_ sender: Any) {
        print("start over button")
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
