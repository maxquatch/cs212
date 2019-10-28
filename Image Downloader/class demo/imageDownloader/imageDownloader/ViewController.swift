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
    
    func loadImage() {
        let northernURL = URL(string: "https://apod.nasa.gov/apod/image/1804/DragonAurora_Bastoni_4240.jpg")!
        let task = URLSession.shared.dataTask(with: northernURL) {
            data, response, error in
            
            print("in the data task completion handler")
            var displayImage: UIImage?
            
            if error != nil {
                print("Error in loadImage: \(error!)")
            }
            
            if let imageData = data {
               displayImage = UIImage(data: imageData)
            }
            
            DispatchQueue.main.async {
                self.theImage.image = displayImage
            }
        }
        
        task.resume()
    }
    


}

