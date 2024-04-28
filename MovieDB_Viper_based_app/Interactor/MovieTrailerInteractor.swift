//
//  MovieTrailerInteractor.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

class MovieTrailerInteractor:MovieTrailerInteractorProtocol {
  var presenter: MovieTrailerPresenterProtocol?
  
  func getYoutubeVideoByQuery(query: String) {
    guard let query = query.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else { return }
    guard let url = URL(string: "\(Constants.youtubeBaseURL)/search?q=\(query)&key=AIzaSyAbOJDXjteezgFe-Nd8G6jmsViaDWR61qw") else { return }

    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { [weak self] data, _, error in
        guard let data = data, error == nil else { return }
        do {
            let results = try JSONDecoder().decode(YoutubeResponse.self, from: data)
            self?.presenter?.interactorDidGetYoutubeVideo(result: .success(results.items?.first?.id?.videoId ?? "_Z3QKkl1WyM"))
        } catch {
            self?.presenter?.interactorDidGetYoutubeVideo(result: .failure(error))
        }
    }
    task.resume()
  }
}
