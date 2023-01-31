//
//  FilmDetailViewController.swift
//  BlindCinema
//
//  Created by ANSAR DAULETBAYEV on 30.01.2023.
//

import UIKit
import WebKit

class FilmsDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var descriptionView: UITextView!
    @IBOutlet weak var releaseDate: UILabel!
    
    var entityFilm: EntityFilm?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        //Clear the fields
        titleLabel.text = ""
        descriptionView.text = ""
        
        //Check if video there's a video
        guard entityFilm != nil else {
            return
        }
        //create the embed URL
        
        //Load it into the webview
        
        //Set title
        
        //Set the data
        
        //Set the description
    }

}
