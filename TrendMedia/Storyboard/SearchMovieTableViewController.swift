//
//  SearchMovieTableViewController.swift
//  TrendMedia
//
//  Created by MIN SEONG KIM on 2022/07/19.
//

import UIKit

struct Movie {
    let title: String
    let releaseDate: String
    let runtime: Int
    let overview: String
    let rate: Double
}

class SearchMovieTableViewController: UITableViewController {
    let movieList = MovieInfo()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.movie.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchMovieTableViewCell", for: indexPath) as! SearchMovieTableViewCell
        cell.configureCell(movie: movieList.movie[indexPath.row])
        return cell
    }
}
