//
//  Constants.swift
//  BlindCinema
//
//  Created by ANSAR DAULETBAYEV on 30.01.2023.
//

import Foundation

struct Constans {
    
    static var API_KEY = "7de5f8b7cc960d1fb3bd9603ed5accf1"
    static var PLAYLIST_ID = ""
    static var NAME_OF_SEARCHING = "Yes"
    static var API_URL = "https://api.themoviedb.org/3/search/movie?api_key=\(Constans.API_KEY)&language=ru-RU&query=\(Constans.NAME_OF_SEARCHING)&page=1&include_adult=false&region=ru"
    static var VIDEOCELL_ID = "VideoCell"
    static var EMBED_URL = ""
    
}
