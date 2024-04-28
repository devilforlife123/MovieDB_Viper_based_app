//
//  MovieListViewProtocol.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

protocol MovieListViewProtocol {
    var presenter: MovieListPresenterProtocol? { get set }
    func updateWithData(data: MovieResponse)
    func updateWithError(error: String)
}
