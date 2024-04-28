//
//  GenreListInteractorProtocol.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 26/4/2024.
//

import Foundation

protocol GenreListInteractorProtocol {
  var presenter: GenreListPresenterProtocol? { get set }
  func getAllGenres()
}
