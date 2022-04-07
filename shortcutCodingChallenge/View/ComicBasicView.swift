//
//  ComicBasicView.swift
//  shortcutCodingChallenge
//
//  Created by Odin Siljebøl on 07/04/2022.
//

import SwiftUI

struct ComicBasicView: View {
    
    var comic: Comic?
    
    var body: some View {
        VStack{
            Text(comic?.title ?? "Title")
            .padding()
        
            AsyncImage(url: URL(string: comic?.img ?? "Image")) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            Text("Image")
        }
        .padding()
        
            Text("#\(comic?.num ?? 0)")
        }
    }
}

