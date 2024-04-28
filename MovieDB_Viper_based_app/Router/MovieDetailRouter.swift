//
//  MovieDetailRouter.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation
import UIKit

class MovieDetailRouter:MovieDetailRouterProtocol {
  func presentUserReview(movie: Movie, view: UIViewController) {
    let movieReviewVC = MovieReviewRouter.createMovieReviewModule(movie: movie)
    movieReviewVC.id = movie.id ?? 0
    let navVC = UINavigationController(rootViewController: movieReviewVC)
    view.present(navVC, animated: true)
  }
  
  func presentWatchTrailer(movie: Movie, view: UIViewController) {
    let movieTrailerVC = MovieTrailerRouter.createMovieTrailerModule(movie: movie)
    movieTrailerVC.query = movie.title ?? movie.original_title ?? ""
    let navVC = UINavigationController(rootViewController: movieTrailerVC)
    view.present(navVC, animated: true)
  }
  
  static func createMovieDetailModule(movie: Movie) -> MovieDetailViewController {
    let view = MovieDetailViewController()
    let presenter = MovieDetailPresenter()
    let router = MovieDetailRouter()
    let interactor = MovieDetailInteractor()

    view.presenter = presenter
    presenter.view = view
    presenter.interactor = interactor
    presenter.router = router
    interactor.presenter = presenter
    interactor.movie = movie
    return view

  }
}
