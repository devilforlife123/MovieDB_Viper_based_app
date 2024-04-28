//
//  MovieDetailPresenterProtocol.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation
import UIKit

protocol MovieDetailPresenterProtocol {
    var view: MovieDetailViewProtocol? { get set }
    var interactor: MovieDetailInteractorProtocol? { get set }
    var router: MovieDetailRouterProtocol? { get set }
    func viewDidLoadMovieDetailById(id: Int)
    func interactorDidGetMoviDetailData(result: Result<Movie, Error>)
    func tapUserReviewButton(movie: Movie, view: UIViewController)
    func tapWatchTrailerButton(movie: Movie, view: UIViewController)
}
