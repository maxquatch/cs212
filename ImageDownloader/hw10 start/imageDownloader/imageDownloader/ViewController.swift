//
//  ViewController.swift
//  imageDownloader
//
//  Created by Max Luttrell on 4/12/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadImage() {
        // Create a URL instance here for https://apod.nasa.gov/apod/image/1804/DragonAurora_Bastoni_4240.jpg
        let northernURL = ...
        
        // Create the URLSession task here for northernURL
        let task = URLSession... {
            data, response, error in
            
            print("in the data task completion handler")
            
            // Declare a UIImage var to hold the image, named displayImage
            
            
            // Process the error with an if-let. if there is an error
            // then print it and set displayImage to nil
            
            
            // Process the data with an if-let. Try to create a UIImage
            // from the data
 
            
            // Pass this line back to the main thread
            // set self.theImage.image to displayImage

        }
        
        // start the task running

    }
    


}

