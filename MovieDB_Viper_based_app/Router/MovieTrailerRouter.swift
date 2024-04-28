//
//  MovieTrailerRouter.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

class MovieTrailerRouter:MovieTrailerRouterProtocol {
  static func createMovieTrailerModule(movie: Movie) -> MovieTrailerViewController {
    let view = MovieTrailerViewController()
    let presenter = MovieTrailerPresenter()
    let interactor = MovieTrailerInteractor()
    let router = MovieTrailerRouter()
    view.presenter = presenter
    presenter.view = view
    presenter.interactor = interactor
    presenter.router = router
    interactor.presenter = presenter
    return view 
  }
}
