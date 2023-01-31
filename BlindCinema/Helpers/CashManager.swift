//
//  CashManager.swift
//  BlindCinema
//
//  Created by ANSAR DAULETBAYEV on 31.01.2023.
//

import Foundation

class CacheManager {
    
    static var cashe = [String:Data]()
    
    static func setFilmCache(_ url:String, _ data:Data?) {
        
        // Store the image data and use the url as the key
        cashe[url] = data
    }
    
    static func getFilmCashe(_ url:String)-> Data? {
        
        // Try to get the data for the specified url
        return cashe[url]
    }
}
