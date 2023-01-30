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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setData(film: EntityFilm) {
        titleLabel.text = film.title
        overviewLabel.text = film.overview
//        raitingLabel.text = film.vote_average
        imagePosterPath.sd_setImage(with: URL(string: film.poster_path), completed: nil)
        imagePosterPath.layer.cornerRadius = 25
        
        
    }

}
