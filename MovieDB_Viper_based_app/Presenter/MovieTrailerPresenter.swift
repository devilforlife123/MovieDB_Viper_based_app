//
//  MovieTrailerPresenter.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

class MovieTrailerPresenter:MovieTrailerPresenterProtocol {
  var view: MovieTrailerViewProtocol?
  
  var interactor: MovieTrailerInteractorProtocol?
  
  var router: MovieTrailerRouterProtocol?
  
  func viewDidLoadYoutubeVideo(query: String) {
    interactor?.getYoutubeVideoByQuery(query: "\(query) trailer")
  }
  
  func interactorDidGetYoutubeVideo(result: Result<String, Error>) {
    switch result {
    case.success(let videoId):
        view?.updateWithData(videoId: videoId)
    case.failure(let error):
        view?.updateWithError(error: error.localizedDescription)
    }
  }
  
}
