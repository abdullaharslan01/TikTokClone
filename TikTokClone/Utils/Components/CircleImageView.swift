//
//  CircleImageView.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import SwiftUI

struct CircleImageView: View {
    let imageUrl: String
    let size: ImageSizes

    var body: some View {
        Image(imageUrl)
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .frame(width: size.size, height: size.size)
    }
}

#Preview {
    VStack {
        CircleImageView(imageUrl: "profile1", size: .xs)
        CircleImageView(imageUrl: "profile2", size: .s)
        CircleImageView(imageUrl: "profile3", size: .m)
        CircleImageView(imageUrl: "profile4", size: .l)
        CircleImageView(imageUrl: "profile5", size: .xl)
    }
}
