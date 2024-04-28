//
//  MovieTrailerInteractorProtocol.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

protocol MovieTrailerInteractorProtocol {
  var presenter: MovieTrailerPresenterProtocol? { get set }
  func getYoutubeVideoByQuery(query: String)
}
