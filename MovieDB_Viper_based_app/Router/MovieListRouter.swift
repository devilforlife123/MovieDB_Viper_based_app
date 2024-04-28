//
//  MovieListRouter.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation
import UIKit

class MovieListRouter:MovieListRouterProtocol {
  static func createMovieListModule(genre: Genre) -> MovieListViewController {
    let view = MovieListViewController()
    let presenter = MovieListPresenter()
    let interactor = MovieListInteractor()
    let router = MovieListRouter()

    view.presenter = presenter
    presenter.view = view
    presenter.interactor = interactor
    presenter.router = router
    presenter.interactor = interactor
    interactor.presenter = presenter
    return view
  }
  
  func pushToMovieDetail(movie: Movie, view: UIViewController) {
    let movieDetailViewController = MovieDetailRouter.createMovieDetailModule(movie:movie)
    movieDetailViewController.id = movie.id ?? 0
    view.navigationController?.pushViewController(movieDetailViewController, animated: true)
  }
}
