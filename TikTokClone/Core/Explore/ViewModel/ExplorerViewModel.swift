//
//  ExplorerViewModel.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import Foundation

class ExplorerViewModel: ObservableObject {
    @Published var profiles: [UserProfile] = []

    init() {
        loadProfiles()
    }

    func loadProfiles() {
        self.profiles = [
            UserProfile(username: "murat_ozkan", fullName: "Murat Özkan", profileImageUrl: "profile2"),
            UserProfile(username: "ayse_sahin", fullName: "Ayşe Şahin", profileImageUrl: "profile3"),
            UserProfile(username: "zeynep_demir", fullName: "Zeynep Demir", profileImageUrl: "profile5"),
            UserProfile(username: "ahmet_turan", fullName: "Ahmet Turan", profileImageUrl: "profile4"),
            UserProfile(username: "elif_karaca", fullName: "Elif Karaca", profileImageUrl: "profile6"),
            UserProfile(username: "can_kara", fullName: "Can Kara", profileImageUrl: "profile7"),
            UserProfile(username: "sevki", fullName: "Sevki", profileImageUrl: "profile8")
        ]
    }
}
