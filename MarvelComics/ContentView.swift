//
//  ContentView.swift
//  MarvelComics
//
//  Created by Bret Squire on 3/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ComicsView().tabItem {
                Label("Comics", systemImage: "book")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
