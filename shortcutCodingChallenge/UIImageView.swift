//
//  UIImageView.swift
//  shortcutCodingChallenge
//
//  Created by Odin Siljebøl on 11/04/2022.
//

import SwiftUI

struct URLImageView: View {
    
    let url: String
    let placeholder: String
    
    @ObservedObject var imageloader = URLToImage()
    
    init(url: String, placeholder: String = "placeholder") {
        self.url = url
        self.placeholder = placeholder
        self.imageloader.downloadImage(url: self.url)
    }
    
    var body: some View {
        if let data = self.imageloader.downloadedData {
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
                .scaledToFit()
        } else {
            return Image ("Japan")
                .resizable()
                .scaledToFit()
        }
    }
}
