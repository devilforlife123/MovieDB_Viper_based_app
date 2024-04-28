//
//  ReviewResponse.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

struct ReviewResponse:Codable {
  let results: [Review]?
  let total_pages: Int?
}

struct Review: Codable {
    let author: String?
    let author_details: AuthorDetails?
    let content: String?
    let updated_at: String?
}

struct AuthorDetails: Codable {
    let name: String?
    let username: String?
    let avatar_path: String?
    let rating: Double?
}
