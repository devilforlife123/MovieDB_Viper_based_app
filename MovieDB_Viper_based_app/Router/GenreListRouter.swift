//
//  GenreListRouter.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 26/4/2024.
//

import Foundation
import UIKit

class GenreListRouter:GenreListRouterProtocol {
  static func createGenreListModule() -> GenreListViewController {
    //Create the view
    let view = GenreListViewController()
    let presenter = GenreListPresenter()
    let interactor = GenreListInteractor()
    let router = GenreListRouter()

    view.presenter = presenter 
    presenter.view = view
    presenter.interactor = interactor
    presenter.router = router
    interactor.presenter = presenter

    return view 
  }
  
  func pushToDiscoverGenre(genre: Genre, view: UIViewController) {
    let movieListVC = MovieListRouter.createMovieListModule(genre:genre)
    movieListVC.genreId = genre.id
    movieListVC.title = "\(genre.name) Movies"
    //Now push the ViewController on the stack
    view.navigationController?.pushViewController(movieListVC, animated: true)
  }
}
