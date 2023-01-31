//
//  FilmFormatter.swift
//  BlindCinema
//
//  Created by ANSAR DAULETBAYEV on 31.01.2023.
//

import Foundation


struct FilmFormatter {
    

    static var dateFormatter: DateFormatter = {
        let df = DateFormatter()
        df.locale = Locale(identifier: "en_US_POSIX")
        df.dateFormat = "yyyy-MM-dd"
        return df
    }()
    
    
    
    static func encode(_ date: Date) -> String {
        return dateFormatter.string(from: date)
    }
    
    static func decode(_ string: String) -> Date? {
        return dateFormatter.date(from: string)
    }
}


