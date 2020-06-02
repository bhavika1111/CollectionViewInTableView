//
//  ViewController.swift
//  CollectionViewInTableView
//
//  Created by Bhavika Patel on 5/29/20.
//  Copyright © 2020 Bhavika Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var tableView: UITableView!
    
    var imageCell = ImageTableViewCell()
//    var movieList = [MovieData]()
    
    var dataArray: [[String]] = []
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
      tableView.dataSource = self
      tableView.delegate = self
        
        retrieveData { (dataArray) in
            self.dataArray = dataArray
            self.tableView.reloadData()
        }
//        imageCell.delegate = self
//        imageCell.getDetalMovieList()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count//movieList.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let movieImgIndex = movieList[indexPath.row]
         
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! ImageTableViewCell
        
        cell.getData(data: dataArray[indexPath.row])
        
//        cell.setImage(movie: movieImgIndex)
    
        return cell
        
     }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 122
    }
    
    func retrieveData(completion: @escaping ([[String]]) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            let data = [ ["0", "1", "2", "3", "5", "6", "7", "8", "9"], ["3", "4", "5", "9", "10", "11", "12", "12", "13"], ["6", "7", "8"], ["5", "6", "7", "8", "9"], ["3", "5", "9", "12", "13"], ["7", "8"], ["0", "1"], ["12", "13"], ["6"]]
            completion(data)
        }
    }

    /*
    func imageRetrived(_ movieImageCell: [MovieData]) {
        self.movieList = movieImageCell
        tableView.reloadData()
    } */
    

}

