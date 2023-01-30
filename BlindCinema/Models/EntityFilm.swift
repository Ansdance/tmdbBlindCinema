//
//  EntityFilms.swift
//  FilmApi
//
//  Created by ANSAR DAULETBAYEV on 31.10.2022.
//

import Foundation
import SwiftyJSON

struct EntityFilm {
    
    var videoId = ""
    var title = ""
    var poster_path = ""
    var overview = ""
    var vote_average = ""
    var release_date = ""
    var vote_count = ""
    
    init(){
        
    }
    
    init(json: JSON){
        if let item = json["release_date"].string {
            videoId = item
        }
        if let item = json["id"].string {
            videoId = item
        }
        if let item = json["title"].string {
            title = item
        }
        if let item = json["poster_path"].string {
            poster_path = "https://image.tmdb.org/t/p/w500" + item
        }
        if let item = json["overview"].string {
            overview = item
        }
        if let item = json["vote_average"].string {
            vote_average = item
        }
        /*
         another one way how to decode
         self.title = try snippetContainer.decode(String.self, forKey:.title)
         */
    }
}

