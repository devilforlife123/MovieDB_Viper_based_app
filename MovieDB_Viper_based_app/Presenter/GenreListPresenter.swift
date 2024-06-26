//
//  GenreListPresenter.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 26/4/2024.
//

import Foundation
import UIKit 

class GenreListPresenter:GenreListPresenterProtocol {
  var view: GenreListViewProtocol?
  
  var interactor: GenreListInteractorProtocol?
  
  var router: GenreListRouterProtocol?

  func viewDidLoadGenreList() {
      interactor?.getAllGenres()
  }

  func interactorDidGetGenreListData(result: Result<[Genre], Error>) {
    switch result {
    case.success(let genres):
        view?.updateWithData(data: genres)
    case.failure(let error):
        view?.updateWithError(error: error.localizedDescription)
    }
  }
  
  func tapDiscoverGenre(genre: Genre, view: UIViewController) {
    router?.pushToDiscoverGenre(genre: genre, view: view)
  }
}
