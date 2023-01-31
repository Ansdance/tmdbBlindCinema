//
//  EntityFilms.swift
//  FilmApi
//
//  Created by ANSAR DAULETBAYEV on 31.10.2022.
//

import Foundation

struct EntityFilm: Decodable {
    
    var filmId: Int
    var title = ""
    var poster_path = ""
    var overview = ""
    var vote_average = ""
    var release_date = Date()
    var vote_count = ""
    
    enum CodingKeys: String, CodingKey {
        
        
        case poster_path
        
        case release_date
        case title
        case overview
        case thumbnail = "url"
        case filmId = "id"
        
    }
    
    init (from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        // Parse title
        self.title = try container.decode(String.self, forKey: .title)
        
        // Parse description
        self.overview = try container.decode(String.self, forKey: .overview)
        
        // Parse the publish date
        let dateStr = try container.decode(String.self, forKey: .release_date)
        if let formattedDate = FilmFormatter.decode(dateStr) {
            self.release_date = formattedDate
        }
        // Parse poster_path
        
        // self.poster_path = try container.decode(String.self, forKey: .poster_path)
        let imgPath = try container.decode(String.self, forKey: .poster_path)
            self.poster_path = Constans.imageBaseUrl+(imgPath)
        
        self.filmId = try container.decode(Int.self, forKey: .filmId)
    }
}

