//
//  MovieTrailerPresenterProtocol.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

protocol MovieTrailerPresenterProtocol {
  var view: MovieTrailerViewProtocol? { get set }
  var interactor: MovieTrailerInteractorProtocol? { get set }
  var router: MovieTrailerRouterProtocol? { get set }
  func viewDidLoadYoutubeVideo(query: String)
  func interactorDidGetYoutubeVideo(result: Result<String, Error>)
}
