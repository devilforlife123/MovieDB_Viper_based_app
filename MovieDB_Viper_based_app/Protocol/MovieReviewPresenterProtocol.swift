//
//  MovieReviewPresenterProtocol.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

protocol MovieReviewPresenterProtocol {
  var view: MovieReviewViewProtocol? { get set }
  var interactor: MovieReviewInteractorProtocol? { get set }
  var router: MovieReviewRouterProtocol? { get set }
  func viewDidLoadReviewById(id: Int, page: Int)
  func interactorDidGetReviewData(result: Result<ReviewResponse, Error>)
}
