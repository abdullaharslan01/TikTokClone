//
//  FeedView.swift
//  TikTokClone
//
//  Created by abdullah on 14.12.2024.
//

import SwiftUI
import AVKit

struct FeedView: View {
    
    @StateObject var viewModel = FeedViewModel()
    @State private var scroolPosition: String?
    @State private var player = AVPlayer()
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack(spacing: 0) {
                ForEach(viewModel.posts) { post in
                    FeedCell(post: post, player: player)
                        .id(post.id)
                    
                }
            }.scrollTargetLayout()
        }
        .onAppear(perform: {
            player.play()
        })
        .scrollPosition(id: $scroolPosition)
        .scrollTargetBehavior(.paging)
            .ignoresSafeArea()
            .onChange(of: scroolPosition) { oldValue, newValue in
                playVideoOnChangeScrollPosition(postId: newValue)
            }
            
    }
    
    func playVideoOnChangeScrollPosition(postId: String?) {
        guard let currentPost = viewModel.posts.first(where: { $0.id == postId
        }) else { return}
        
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL(string: currentPost.videoUrl)!)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    FeedView()
}
