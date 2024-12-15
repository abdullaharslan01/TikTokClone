//
//  PostGridView.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import SwiftUI

struct PostGridView: View {
    
    private let columns = Array(repeating: GridItem(.flexible(), spacing: 1), count: 3)
    
    private let width = (UIScreen.main.bounds.width / 3) - 2
    
    var body: some View {
        
        LazyVGrid(columns: columns, spacing: 2) {
            ForEach(1..<6) { post in
                Image("\(post)")
                    .resizable()
                    .scaledToFill()
                    .frame(width: width, height: 180)
                    .clipped()
            }
        }.padding(.horizontal, 2)
    }
}

#Preview {
    PostGridView()
}
