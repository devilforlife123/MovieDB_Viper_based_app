//
//  MovieDetailViewProtocol .swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

protocol MovieDetailViewProtocol {

  var presenter: MovieDetailPresenterProtocol? { get set }
  func updateWithData(data: Movie)
  func updateWithError(error: String)
  
}
