//
//  FilmsTableViewCell.swift
//  BlindCinema
//
//  Created by ANSAR DAULETBAYEV on 29.01.2023.
//

import UIKit
import SDWebImage

class FilmsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imagePosterPath: UIImageView!
    @IBOutlet weak var overviewLabel: UILabel!
    
    var entityFilms:EntityFilm?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
        
    func setCell (_ f:EntityFilm) {
        self.entityFilms = f
        
        // Ensure that we have a film
        guard self.entityFilms != nil else {
            return
        }
        
        // Set the title and date label
        self.titleLabel.text = entityFilms?.title
    
        // Set the thumbnail
        guard self.entityFilms!.poster_path != "" else {
            return
        }
        
        // Download the thumbnail data
        let url = URL(string: self.entityFilms!.poster_path)
        
        // Get the shared URL Session object
        let session = URLSession.shared
        
        // Create a data task
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            if error == nil && data != nil {
                
                // Save the data in the cache
                CacheManager.setFilmCache(url!.absoluteString, data)
                
                // Check that the downloaded url matches the video thumbnail url that this cell is currently set to display
                if url!.absoluteString != self.entityFilms?.poster_path {
                    
                    // Video cell has been recycled for another video and no longer matches the thumbnail that was downloaded
                    return
                }
                
                // Create the image object
                let image = UIImage(data: data!)
                
                // Set the imageview
                DispatchQueue.main.async {
                    self.imagePosterPath.image = image
                }
                
            }
            
        }
        // Start data task
        dataTask.resume()
    }

}
