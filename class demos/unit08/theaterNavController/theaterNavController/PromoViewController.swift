//
//  PromoViewController.swift
//  theaterNavController
//
//  Created by Max Luttrell on 3/13/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class PromoViewController: UIViewController {

    @IBOutlet weak var promoLabel: UILabel!
    var name: String?
    var pass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        if pass == "PASS" {
            if name != nil {
                promoLabel.text = "\(name!), you won the promo!"
            } else {
                promoLabel.text = "You won the promo!"
            }
        } else {
            if name != nil {
                promoLabel.text = "\(name!), try again!"
            } else {
                promoLabel.text = "Try again!"
            }
        }
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
