//
//  Movie.swift
//  IOS-Flixster
//
//  Created by Khiem Tran Le on 3/3/23.
//

import Foundation

struct MovieRespones: Decodable{
    let results: [Movie]
}

struct Movie: Decodable{
    let title: String
    let backdrop_path: String
    let poster_path: String
    let overview: String
    let vote_average: Float
    let vote_count: Int
    let popularity: Float
    let id: Int
}

