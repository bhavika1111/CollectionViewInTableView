//
//  ImageTableViewCell.swift
//  CollectionViewInTableView
//
//  Created by Bhavika Patel on 5/29/20.
//  Copyright © 2020 Bhavika Patel. All rights reserved.
//

import UIKit

protocol ImageModelProtocol {
    func imageRetrived(_ movieImageCell:[MovieData])
}

class ImageTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var delegate:ImageModelProtocol?
    
    var imgCollectionCell = ImgCollectionViewCell()
    var data:[String]? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    func getData(data: [String]) {
        self.data = data
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data!.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! ImgCollectionViewCell
        
        let item = data![indexPath.item]
        
        cell.setLabel(label: item)
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 122)
    }
/*
    func getDetalMovieList() {

        // Get the url with the JSON format
        guard let url = URL(string: "http://www.omdbapi.com/?s=Batman&apikey=d0cb6890&") else {
               fatalError("URL is not found!")
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if error == nil && data != nil {
                do {
                    let result = try JSONDecoder().decode(SearchData.self, from: data!)
                    
                    let movieImg = result.Search!
                    
                    DispatchQueue.main.async {
                        return self.delegate?.imageRetrived(movieImg)
                    }
                }
                catch {
                    print("Couldn't decode the json")
                    return
                }
            }
        }.resume()
    }
    
   
    func setImage(movie: MovieData) {
        imgCollectionCell.displayImage(movie)
    }
 */
    
}
