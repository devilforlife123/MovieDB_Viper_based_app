//
//  GenreListViewProtocol.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 26/4/2024.
//

import Foundation
import UIKit

protocol GenreListRouterProtocol {
  static func createGenreListModule() -> GenreListViewController
  func pushToDiscoverGenre(genre: Genre, view: UIViewController)
}
