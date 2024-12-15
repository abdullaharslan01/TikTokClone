//
//  FeedViewModel.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        fetchPosts()
    }
    
    
    func fetchPosts() {
        self.posts = FeedService.shared.getAllPosts()
    }
}
