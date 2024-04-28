//
//  MovieListInteractor.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation
import UIKit

class MovieListInteractor:MovieListInteractorProtocol {
  var presenter: MovieListPresenterProtocol?
  
  func getMoviesByGenreId(id: Int, page: Int) {
    guard let url = URL(string: "\(Constants.baseURL)/discover/movie?api_key=f74b7953c0527670d96035f6abfaca67&language=en-US&sort_by=popularity.desc&include_video=false&page=\(page)&with_genres=\(id)") else { return }

    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { [weak self] data, _, error in
        guard let data = data, error == nil else { return }
        do {
            let result = try JSONDecoder().decode(MovieResponse.self, from: data)
            self?.presenter?.interactorDidGetMovieListData(result: .success(result))
        } catch {
            self?.presenter?.interactorDidGetMovieListData(result: .failure(error))
        }
    }
    task.resume()
  }
}
