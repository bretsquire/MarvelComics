//
//  ComicDataWrapper.swift
//  MarvelComics
//
//  Created by Bret Squire on 3/11/22.
//

struct ComicDataWrapper: Codable {
    var data: ComicDataContainer?
    
    struct ComicDataContainer: Codable {
        var results: [Comic]
    }
}
