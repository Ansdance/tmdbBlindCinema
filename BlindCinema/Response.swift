//
//  Response.swift
//  BlindCinema
//
//  Created by ANSAR DAULETBAYEV on 30.01.2023.
//

import Foundation

struct Response: Decodable {
    
    var results: [EntityFilm]?
    
    enum CodingKeys: String, CodingKey {
        case results
    }
    
    init (from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.results = try container.decode([EntityFilm].self, forKey: .results)
    }
}
