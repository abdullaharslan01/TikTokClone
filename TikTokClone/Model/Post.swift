//
//  Post.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import Foundation

struct Post: Identifiable {
    let id: String = UUID().uuidString
    let videoUrl: String
    let profileUrl: String
    let title: String
    let subtitle: String
    let userFullName: String
}
