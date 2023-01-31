//
//  FilmsViewController.swift
//  BlindCinema
//
//  Created by ANSAR DAULETBAYEV on 29.01.2023.
//

import UIKit
import Alamofire
import SwiftyJSON
import SVProgressHUD


class FilmsViewController: UIViewController, UISearchBarDelegate, UITableViewDataSource, UITableViewDelegate, ModelDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchbar: UISearchBar!
    
    var model = Model()
    var films = [EntityFilm]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set itself as the datasource and the delegate
        tableView.dataSource = self
        tableView.delegate = self
        
        // Set itself as the delegate of the model
        model.delegate = self
        
        model.getFilms()
    }
    
        // MARK: - Model Delegate Methods
    
    func filmsFetched(_ films: [EntityFilm]) {
        
        // Set the returned films to our films property
        self.films = films
        
        // Refresh the tableview
        tableView.reloadData()
        
        
    }
    
    
    // MARK: - TableView Methods
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Constans.FILMCELL_ID, for: indexPath) as! FilmsTableViewCell
        
        // Configure the cell  with the data
        let film = self.films[indexPath.row]
        
        cell.setCell(film)
        
        // Return the cell
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return films.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 153
    }
}

