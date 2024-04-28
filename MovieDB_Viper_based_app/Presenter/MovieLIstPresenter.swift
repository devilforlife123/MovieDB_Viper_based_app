//
//  MovieLIstPresnter.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation
import UIKit

class MovieListPresenter:MovieListPresenterProtocol {
  var view: MovieListViewProtocol?
  
  var interactor: MovieListInteractorProtocol?
  
  var router: MovieListRouterProtocol?
  
  func viewDidLoadMovieListWithGenreId(id: Int, page: Int) {
    interactor?.getMoviesByGenreId(id: id, page: page)
  }
  
  func interactorDidGetMovieListData(result: Result<MovieResponse, Error>) {
    switch result {
    case.success(let movieResponse):
        view?.updateWithData(data: movieResponse)
    case.failure(let error):
        view?.updateWithError(error: error.localizedDescription)
    }
  }

  func tapMovieDetail(movie: Movie, view: UIViewController) {
    router?.pushToMovieDetail(movie: movie, view: view)
  }
  
  
}
