//
//  MovieReviewViewProtocol.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

protocol MovieReviewViewProtocol {
  var presenter: MovieReviewPresenterProtocol? { get set }
  func updateWithData(data: ReviewResponse)
  func updateWithError(error: String)
}
