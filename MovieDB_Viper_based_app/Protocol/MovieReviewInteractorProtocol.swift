//
//  MovieReviewInteractorProtocol.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

protocol MovieReviewInteractorProtocol {
  var presenter: MovieReviewPresenterProtocol? { get set }
  func getAllReviewById(id: Int, page: Int)
}
