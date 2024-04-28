//
//  MovieListInteractorProtocol.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

protocol MovieListInteractorProtocol {

  var presenter:MovieListPresenterProtocol? { get set }
  func getMoviesByGenreId(id:Int, page:Int)

}
