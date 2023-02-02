//
//  Model.swift
//  BlindCinema
//
//  Created by ANSAR DAULETBAYEV on 30.01.2023.
//

import Foundation

protocol ModelDelegate {
    func filmsFetched(_ films:[EntityFilm])
}


class Model {
    
    var delegate:ModelDelegate?
    
    func getFilms() {
        
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
            
            do {
                //Parsing the data into video object
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                let response = try decoder.decode(Response.self, from: data!)
                if response.results != nil {
                    
                    DispatchQueue.main.async {
                        
                        // Call the "filmsFetched" method of the delegate
                        self.delegate?.filmsFetched(response.results!)
                    }
                }
            }
            catch {
//                print(error)
            }
        }
        //Kick off the task
        print("----____-----")
        print(dataTask)
        dataTask.resume()
    }
}
