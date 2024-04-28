//
//  MovieListPresenterProtocol.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation
import UIKit

protocol MovieListPresenterProtocol {
  var view: MovieListViewProtocol? { get set }
  var interactor: MovieListInteractorProtocol? { get set }
  var router: MovieListRouterProtocol? { get set }
  func viewDidLoadMovieListWithGenreId(id: Int, page: Int)
  func interactorDidGetMovieListData(result: Result<MovieResponse, Error>)
  func tapMovieDetail(movie: Movie, view: UIViewController)
}
