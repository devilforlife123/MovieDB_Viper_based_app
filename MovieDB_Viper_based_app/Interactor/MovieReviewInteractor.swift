//
//  MovieReviewInteractor.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

class MovieReviewInteractor:MovieReviewInteractorProtocol {
  var presenter: MovieReviewPresenterProtocol?
  
  func getAllReviewById(id: Int, page: Int) {
      guard let url = URL(string: "\(Constants.baseURL)/movie/\(id)/reviews?api_key=f74b7953c0527670d96035f6abfaca67&language=en-US&page=\(page)") else { return }
      
      let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { [weak self] data, _, error in
          guard let data = data, error == nil else { return }

          do {
              let result = try JSONDecoder().decode(ReviewResponse.self, from: data)
              self?.presenter?.interactorDidGetReviewData(result: .success(result))
          } catch {
              self?.presenter?.interactorDidGetReviewData(result: .failure(error))
          }
      }
      task.resume()
  }
}
