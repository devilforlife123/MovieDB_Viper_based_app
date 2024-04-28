//
//  MovieReviewRouterProtocol.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

protocol MovieReviewRouterProtocol {
    static func createMovieReviewModule(movie: Movie) -> MovieReviewViewController
}
