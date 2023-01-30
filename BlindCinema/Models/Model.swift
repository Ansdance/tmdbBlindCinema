//
//  Model.swift
//  BlindCinema
//
//  Created by ANSAR DAULETBAYEV on 30.01.2023.
//

import Foundation


class Model {
    
    func getVideos() {
        
        //Create a URLobject
        
        let url = URL(string: Constans.API_URL)
        
        guard url != nil else {
            return
        }
        
        //Get a URSession object
        let session = URLSession.shared
        
        //Get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            //Check if there were any error
            if error != nil || data == nil {
                return
            }
            //Parsing the data into video object
        }
        //Kick off the task
        dataTask.resume()
    }
}
