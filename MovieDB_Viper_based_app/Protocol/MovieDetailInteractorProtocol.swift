//
//  MovieDetailInteractorProtocol.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

protocol MovieDetailInteractorProtocol {
  var presenter: MovieDetailPresenterProtocol? { get set }
  var movie: Movie? { get set }
  func getMovieDetailById(id: Int)
}
