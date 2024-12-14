//
//  FeedView.swift
//  TikTokClone
//
//  Created by abdullah on 14.12.2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack(spacing: 0) {
                ForEach(0..<10) { post in
                    FeedCell(post: post)
                    
                }
            }.scrollTargetLayout()
        }.scrollTargetBehavior(.paging)
            .ignoresSafeArea()
            
    }
}

#Preview {
    FeedView()
}
