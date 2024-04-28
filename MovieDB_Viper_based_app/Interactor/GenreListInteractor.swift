//
//  GenreListInteractor.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 26/4/2024.
//

import Foundation
import UIKit

class GenreListInteractor:GenreListInteractorProtocol {
  var presenter: GenreListPresenterProtocol?
  
  func getAllGenres() {
    guard let url = URL(string: "\(Constants.baseURL)/genre/movie/list?api_key=f74b7953c0527670d96035f6abfaca67&language=en-US") else { return }

    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { [weak self] data, _, error in
      guard let data = data, error == nil else {
          self?.presenter?.interactorDidGetGenreListData(result: .failure(error!))
          return
      }

      do {
          let result = try JSONDecoder().decode(GenreResponse.self, from: data)
          self?.presenter?.interactorDidGetGenreListData(result: .success(result.genres ?? []))
      } catch {
          self?.presenter?.interactorDidGetGenreListData(result: .failure(error))
      }
    }.resume()
  }
}
