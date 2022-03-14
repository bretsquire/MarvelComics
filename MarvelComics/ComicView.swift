//
//  ComicView.swift
//  MarvelComics
//
//  Created by Bret Squire on 3/11/22.
//

import SwiftUI

struct ComicView: View {
    var comic: Comic
    
    var body: some View {
        ZStack(alignment: .bottom) {
            AsyncImage(url: URL(string: comic.thumbnail.uncannySize)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                ProgressView()
            }
            .frame(minWidth: 0, minHeight: 400)
            HStack {
                Text(comic.title)
                Spacer()
            }
            .padding()
            .background(.thinMaterial)
        }
        .background(.thickMaterial)
        .mask(RoundedRectangle(cornerRadius: 16))
        .padding(.bottom, 8)
    }
}
