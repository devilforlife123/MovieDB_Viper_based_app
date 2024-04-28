//
//  MovieReviewPresenter.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

class MovieReviewPresenter:MovieReviewPresenterProtocol {
  var view: MovieReviewViewProtocol?
  
  var interactor: MovieReviewInteractorProtocol?
  
  var router: MovieReviewRouterProtocol?
  
  func viewDidLoadReviewById(id: Int, page: Int) {
    interactor?.getAllReviewById(id: id, page: page)
  }
  
  func interactorDidGetReviewData(result: Result<ReviewResponse, Error>) {
    switch result {
    case.success(let reviewResponse):
        view?.updateWithData(data: reviewResponse)
    case.failure(let error):
        view?.updateWithError(error: error.localizedDescription)
    }
  }

}
