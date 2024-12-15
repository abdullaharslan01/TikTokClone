//
//  NotificationViewModel.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import Foundation

class NotificationViewModel: ObservableObject {
    @Published var notifications = [Notification]()
    
    init() {
        notifications  = [
            Notification(user: "sevki", action: "liked one of your posts", time: "3d", imageUrl: "profile8", contentImageUrl: "1"),
            Notification(user: "murat_ozkan", action: "commented on your post", time: "1h", imageUrl: "profile2", contentImageUrl: "2"),
            Notification(user: "sevki_aksoy", action: "liked one of your posts", time: "5m", imageUrl: "profile3", contentImageUrl: "3"),
            Notification(user: "ayse_sahin", action: "started following you", time: "10m", imageUrl: "profile8", contentImageUrl: "4"),
            Notification(user: "zeynep_demir", action: "liked your comment", time: "2h", imageUrl: "profile5", contentImageUrl: "5"),
            Notification(user: "ahmet_turan", action: "tagged you in a post", time: "30m", imageUrl: "profile6", contentImageUrl: "1"),
            Notification(user: "elif_karaca", action: "sent you a message", time: "45m", imageUrl: "profile7", contentImageUrl: "3"),
            Notification(user: "can_kara", action: "liked one of your posts", time: "20m", imageUrl: "profile8", contentImageUrl: "2"),
            Notification(user: "buse_ozdemir", action: "started following you", time: "1d", imageUrl: "profile3", contentImageUrl: "1"),
            Notification(user: "hakan_yilmaz", action: "commented on your post", time: "2h", imageUrl: "profile4", contentImageUrl: "5"),
            Notification(user: "burak_yildirim", action: "liked one of your posts", time: "4h", imageUrl: "profile7", contentImageUrl: "3"),
            Notification(user: "selin_dogan", action: "sent you a message", time: "1w", imageUrl: "profile3", contentImageUrl: "2"),
            Notification(user: "emre_ozkan", action: "liked your comment", time: "6h", imageUrl: "profile2", contentImageUrl: "1"),
            Notification(user: "nazli_kurt", action: "started following you", time: "2w", imageUrl: "profile3", contentImageUrl: "2"),
            Notification(user: "sinem_ozdemir", action: "liked one of your posts", time: "3d", imageUrl: "profile6", contentImageUrl: "4")
        ]
    }
    
    
}
