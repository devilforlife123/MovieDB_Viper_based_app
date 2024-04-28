//
//  MovieResponse.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

struct MovieResponse:Codable {
  let results: [Movie]?
  let total_pages: Int?
}
