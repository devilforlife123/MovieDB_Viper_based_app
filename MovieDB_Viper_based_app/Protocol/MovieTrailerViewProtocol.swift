//
//  MovieTrailerViewProtocol.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

protocol MovieTrailerViewProtocol {
    var presenter: MovieTrailerPresenterProtocol? { get set }
    func updateWithData(videoId: String)
    func updateWithError(error: String)
}
