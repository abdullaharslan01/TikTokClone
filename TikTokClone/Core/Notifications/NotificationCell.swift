//
//  NotificationCell.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack {
            CircleImageView(imageUrl: "profile5", size: .s)

            HStack {
                Text("auralia.pusri")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    +
                    Text(" liked one of your posts liked one of your posts liked one of ")
                    .font(.footnote) +

                    Text(" 3d")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }.frame(maxWidth: .infinity, alignment: .leading)

            RectangleImageView(imageUrl: "profile1", size: .m)
        }
    }
}

#Preview {
    NotificationCell()
        .padding(.horizontal)
}
