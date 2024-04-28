//
//  MovieDetailRouterProtocol.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation
import UIKit

protocol MovieDetailRouterProtocol {
  static func createMovieDetailModule(movie:Movie) -> MovieDetailViewController
  func presentUserReview(movie:Movie, view:UIViewController)
  func presentWatchTrailer(movie:Movie, view:UIViewController)

}
