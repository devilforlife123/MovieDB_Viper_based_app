//
//  MovieDetailViewController.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation
import UIKit

class MovieDetailViewController:UIViewController,MovieDetailViewProtocol {

  var presenter: MovieDetailPresenterProtocol?
  var headerView: HeaderTableView?
  var movie:Movie?
  var id:Int = 0
  
  private let movieDetailTableView: UITableView = {
      let table = UITableView()
      table.register(MovieDetailTableViewCell.self, forCellReuseIdentifier: MovieDetailTableViewCell.identifier)
      table.isHidden = true
      return table
  }()

  private let loadingIndicator: UIActivityIndicatorView = {
      let loading = UIActivityIndicatorView(style: .large)
      loading.startAnimating()
      return loading
  }()

  func updateWithData(data: Movie) {
    DispatchQueue.main.async { [weak self] in
        self?.movie = data
        self?.loadingIndicator.stopAnimating()
        self?.loadingIndicator.isHidden = true
        self?.movieDetailTableView.isHidden = false
        self?.movieDetailTableView.reloadData()
    }
  }
  
  func updateWithError(error: String) {
    print(error)
  }

  override func viewDidLoad() {
      super.viewDidLoad()
      view.backgroundColor = .systemBackground

      navigationController?.navigationBar.prefersLargeTitles = false
      navigationController?.navigationItem.largeTitleDisplayMode = .never

      view.addSubview(movieDetailTableView)
      view.addSubview(loadingIndicator)

      headerView = HeaderTableView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 400))
      movieDetailTableView.tableHeaderView = headerView

      movieDetailTableView.delegate = self
      movieDetailTableView.dataSource = self
      presenter?.viewDidLoadMovieDetailById(id: id)
  }

  override func viewDidLayoutSubviews() {
      super.viewDidLayoutSubviews()
      loadingIndicator.frame = view.bounds
      movieDetailTableView.frame = view.bounds
  }

  @objc func presentMovieReview() {
      guard let movie = movie else { return }
      presenter?.tapUserReviewButton(movie: movie, view: self)
  }

  @objc func presentMovieTrailer() {
      guard let movie = movie else { return }
      presenter?.tapWatchTrailerButton(movie: movie, view: self)
  }

}

extension MovieDetailViewController:UITableViewDataSource,UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: MovieDetailTableViewCell.identifier, for: indexPath) as? MovieDetailTableViewCell else {
        return UITableViewCell()
    }
    headerView?.configurePosterImage(url: movie?.poster_path ?? "")
    headerView?.reviewButton.addTarget(self, action: #selector(presentMovieReview), for: .touchUpInside)
    headerView?.trailerButton.addTarget(self, action: #selector(presentMovieTrailer), for: .touchUpInside)

    cell.titleMovie.text = movie?.title ?? movie?.original_title
    cell.descriptionMovie.text = movie?.overview
    cell.voteAverage.text = "Rating: \(Double(round(10 * (movie?.vote_average ?? 0)) / 10) )/10"
    cell.releaseDate.text = "Release Date: \(movie?.release_date ?? "xxxx-xx-xx")"
    return cell
  }
  
}
