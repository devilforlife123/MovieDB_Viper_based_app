//
//  MovieReviewRouter.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

class MovieReviewRouter:MovieReviewRouterProtocol {
  static func createMovieReviewModule(movie: Movie) -> MovieReviewViewController {
    let view = MovieReviewViewController()
    let presenter = MovieReviewPresenter()
    let interactor = MovieReviewInteractor()
    let router = MovieReviewRouter()
    view.presenter = presenter
    presenter.view = view
    presenter.interactor = interactor
    presenter.router = router
    interactor.presenter = presenter
    return view
  }
}
