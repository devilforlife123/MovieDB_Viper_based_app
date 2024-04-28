//
//  MovieDetailInteractor.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

class MovieDetailInteractor:MovieDetailInteractorProtocol {
  var movie: Movie?
  
  func getMovieDetailById(id: Int) {
    guard let url = URL(string: "\(Constants.baseURL)/movie/\(id)?api_key=f74b7953c0527670d96035f6abfaca67&language=en-US") else { return }

    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { [weak self] data, _, error in
        guard let data = data, error == nil else { return }

        do {
            let result = try JSONDecoder().decode(Movie.self, from: data)
            self?.presenter?.interactorDidGetMoviDetailData(result: .success(result))
        } catch {
            self?.presenter?.interactorDidGetMoviDetailData(result: .failure(error))
        }
    }
    task.resume()
  }
  
  var presenter: MovieDetailPresenterProtocol?
  

}
