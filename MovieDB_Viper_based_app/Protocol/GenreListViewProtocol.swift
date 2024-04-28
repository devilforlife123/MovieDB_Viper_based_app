//
//  GenreListViewProtocol.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 26/4/2024.
//

import Foundation

protocol GenreListViewProtocol {

  var presenter: GenreListPresenterProtocol? { get set }
  func updateWithData(data:[Genre])
  func updateWithError(error:String)

}
