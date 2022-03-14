//
//  Comics.swift
//  MarvelComics
//
//  Created by Bret Squire on 3/11/22.
//

import UIKit

@MainActor
class Comics: ObservableObject {
    @Published private(set) var items: [Comic] = []
    //let endpoint = "https://gateway.marvel.com/v1/public/comics?ts=4rjtMaNxF9a1BDt4zzz&apikey=4f7364d03db86635a1316cf32964e5cf&hash=f1707adc9d1fd0120fbafe727f4c15e0"
    let endpoint = "https://gateway.marvel.com/v1/public/comics"
    
    func upateItems() async {
        let comics = await fetchComics()
        items = comics
    }
    
    func fetchComics() async -> [Comic] {
        let requestString = endpoint + "?" + AuthHelper.generateAuthUrlParams()
        debugPrint(requestString)
        guard let requestUrl = URL(string: requestString) else { return [] }
        return await fetchComics(from: requestUrl)
    }
    
    private func fetchComics(from url: URL) async -> [Comic] {
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let comicDataWrapper = try JSONDecoder().decode(ComicDataWrapper.self, from: data)
            guard let comics = comicDataWrapper.data?.results else { return [] }
            return comics
        } catch {
            debugPrint("Error loading \(url): \(String(describing: error))")
            return []
        }
    }
}
