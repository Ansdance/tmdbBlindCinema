//
//  ViewController.swift
//  BlindCinema
//
//  Created by ANSAR DAULETBAYEV on 29.01.2023.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }


}

