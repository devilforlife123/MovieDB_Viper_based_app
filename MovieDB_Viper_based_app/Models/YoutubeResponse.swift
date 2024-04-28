//
//  YoutubeResponse.swift
//  MovieDB_Viper_based_app
//
//  Created by suraj poudel on 27/4/2024.
//

import Foundation

struct YoutubeResponse: Codable {
    let items: [VideoElement]?
}

struct VideoElement: Codable {
    let id: VideoID?
}

struct VideoID: Codable {
    let videoId: String?
}
