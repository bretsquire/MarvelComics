//
//  Comic.swift
//  MarvelComics
//
//  Created by Bret Squire on 3/11/22.
//

struct Comic {
    var id: Int
    var title: String
    var thumbnail: Thumbnail
}

extension Comic: Codable {}
extension Comic: Identifiable {}
