//
//  ComicsView.swift
//  MarvelComics
//
//  Created by Bret Squire on 3/11/22.
//

import SwiftUI

struct ComicsView: View {
    @StateObject private var comics = Comics()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(comics.items) { item in
                    ComicView(comic: item)
                }
            }
            .navigationTitle("Marvel Comics")
            .listStyle(.sidebar)
            .refreshable {
                await comics.upateItems()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .task {
            await comics.upateItems()
        }
    }
}
