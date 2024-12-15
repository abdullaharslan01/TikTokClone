//
//  UserProfile.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import Foundation

struct UserProfile: Identifiable {
    var id = UUID()
    var username: String
    var fullName: String
    var profileImageUrl: String
}
