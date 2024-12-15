//
//  NotificationCell.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import SwiftUI

struct NotificationCell: View {
    
    let notification: Notification
    
    var body: some View {
        HStack {
            CircleImageView(imageUrl: notification.imageUrl, size: .s)

            HStack {
                Text("\(notification.user)")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    +
                Text(" \(notification.action) ")
                    .font(.footnote) +

                Text("\(notification.time)")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }.frame(maxWidth: .infinity, alignment: .leading)

            RectangleImageView(imageUrl: "\(notification.contentImageUrl)", size: .m)
        }
    }
}

#Preview {
    NotificationCell(notification: Notification(user: "murat_ozkan", action: "commented on your post", time: "1h", imageUrl: "profile2", contentImageUrl: "1"))
        .padding(.horizontal)
}
