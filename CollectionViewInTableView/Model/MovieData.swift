//
//  MovieData.swift
//  CollectionViewInTableView
//
//  Created by Bhavika Patel on 5/29/20.
//  Copyright © 2020 Bhavika Patel. All rights reserved.
//

import Foundation


struct SearchData: Codable {

    var Search: [MovieData]?
}

struct MovieData: Codable {

//    var Title: String
//    var Year: String
    var Poster: String?
//    var `Type`: String
    
}

struct MovieDetailData: Codable {

//    var Title: String
//    var Year: String
//    var Rated: String
//    var Released: String
//    var Runtime: String
    var Poster: String?
//    var `Type`: String
}
