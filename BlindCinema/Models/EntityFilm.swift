//
//  EntityFilms.swift
//  FilmApi
//
//  Created by ANSAR DAULETBAYEV on 31.10.2022.
//

import Foundation

struct EntityFilm: Decodable {
    
    var id: Int?
    var title: String?
    var poster_path: String?
    var overview: String?
    var vote_average: String?
    var release_date = Date()
    var vote_count: String?
    
    enum CodingKeys: String, CodingKey {
        
        
        case poster_path
        case release_date
        case title
        case overview
        case id
        
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
        
        
        if var imgPath = try? container.decode(String.self, forKey: .poster_path) {
            self.poster_path = Constans.imageBaseUrl + imgPath
        } else {
            self.poster_path = "N/A"
        }
        
//            self.poster_path = Constans.imageBaseUrl+imgPath
//        print(poster_path ?? "nil")
        
        self.id = try container.decode(Int.self, forKey: .id)
    }
}

