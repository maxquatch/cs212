//
//  Itunes.swift
//  MusicPlayer
//
//  Created by Max Luttrell on 4/20/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import Foundation

// make an extension to create a URL with some queries as a parameter
extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map { URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
}

// iTunes base URL
let itunesBaseURL = URL(string: "https://itunes.apple.com/search")!

// struct to hold one track of data from iTunes server
struct Track: Codable {
    let artist: String?
    let track: String?
    let artwork: String?
    let previewURL: String?
    let collectionName: String?
    
    enum CodingKeys: String, CodingKey {
        case artist = "artistName"
        case track = "trackName"
        case artwork = "artworkUrl60"
        case previewURL = "previewUrl"
        case collectionName = "collectionName"
    }
}

// struct to hold results from iTunes server query: number of tracks, and array of tracks
struct Results: Codable {
    let resultCount: Int
    let results: [Track]
    
    enum CodingKeys: String, CodingKey {
        case resultCount
        case results
    }
}

// createURL creates a URL to query iTunes server for info for an search term named "name"
func createURL(name: String) -> URL? {
    // iTunes query for an artist with name "name"
    let itunesQuery: [String: String] = [
        "term": name,
        "media": "music",
        "lang": "en_us",
        "limit": "100"
    ]
    
    return itunesBaseURL.withQueries(itunesQuery)
}

