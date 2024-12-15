//
//  RectangleImageView.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import SwiftUI

struct RectangleImageView: View {
    let imageUrl: String
    let size: ImageSizes
    let cornerRadius: Double = 6
    var body: some View {
        Image(imageUrl)
            .resizable()
            .scaledToFill()
            .frame(width: size.size, height: size.size)
            .clipShape(.rect(cornerRadius: cornerRadius))
        
    }
}

#Preview {
    VStack {
        RectangleImageView(imageUrl: "profile1", size: .xs)
        RectangleImageView(imageUrl: "profile2", size: .s)
        RectangleImageView(imageUrl: "profile3", size: .m)
        RectangleImageView(imageUrl: "profile4", size: .l)
        RectangleImageView(imageUrl: "profile5", size: .xl)
    }
}
