//
//  Notification.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import Foundation

struct Notification: Identifiable {
    let id = UUID()
    let user: String
    let action: String
    let time: String
    let imageUrl: String
    let contentImageUrl: String 
}
