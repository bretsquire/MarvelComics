//
//  Thumbnail.swift
//  MarvelComics
//
//  Created by Bret Squire on 3/11/22.
//

struct Thumbnail {
    var path: String
    var `extension`: String
    
    var uncannySize: String {
        return path + "/portrait_uncanny." + `extension`
    }
}

extension Thumbnail: Codable {}
