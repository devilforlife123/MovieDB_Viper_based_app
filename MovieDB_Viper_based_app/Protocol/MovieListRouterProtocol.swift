//
//  MovieListRouterProtocol.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation
import UIKit

protocol MovieListRouterProtocol {
    static func createMovieListModule(genre: Genre) -> MovieListViewController
    func pushToMovieDetail(movie: Movie, view: UIViewController)
}
