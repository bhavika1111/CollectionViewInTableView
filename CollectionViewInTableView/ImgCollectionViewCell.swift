//
//  ImgCollectionViewCell.swift
//  CollectionViewInTableView
//
//  Created by Bhavika Patel on 5/29/20.
//  Copyright © 2020 Bhavika Patel. All rights reserved.
//

import UIKit

class ImgCollectionViewCell: UICollectionViewCell {
    
    // Fix to error: The imgCell outlet from the Image TableViewCell to the ImageView is invalid. Outlets cannot be connected to repeating content. [12]-- Is to create another cell class
    @IBOutlet weak var imgCell: UIImageView!
    
    @IBOutlet weak var imgText: UILabel!
    
    var imageToDisplay: MovieData?
    
    func setThumbnailImg(thumbnailImg: UIImage) {
         
         self.imgCell.image = thumbnailImg
     }
    
    func setLabel(label: String) {
        self.imgText.text = label
    }
    
   
    
    
    
   /*
     func displayImage(_ movieImage:MovieData) {
            
            // Clear the imageview (in case this cell is being reused)
//            imgCell.image = nil
            
            // Hold a reference to the img
            imageToDisplay = movieImage
            
            let urlString = imageToDisplay!.Poster
            
            guard urlString != nil else {
                return
            }
        
            // Create url object
            let url = URL(string: urlString!)
            
            // Check that it isn't nil
            guard url != nil else {
                print("Couldn't create url object")
                return
            }
            
            // Get the session
            let session = URLSession.shared
        
            // Create the datatask
            let dataTask = session.dataTask(with: url!) { (data, response, error) in
                
                // Check that there's no error and that there is data
                if error == nil && data != nil {
                    
                    if self.imageToDisplay?.Poster == urlString! {
                        // Set the imageView with the data
                        DispatchQueue.main.async {
                            self.imgCell.image = UIImage(data: data!)
                        }
                    }

                }
            }
            
            // Fire the datatask
            dataTask.resume()
        } */
}


