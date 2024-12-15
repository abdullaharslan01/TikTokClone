//
//  FeedCell.swift
//  TikTokClone
//
//  Created by abdullah on 14.12.2024.
//

import SwiftUI
import AVKit

struct FeedCell: View {
    let post: Post
    var player: AVPlayer
    
    init(post: Post, player: AVPlayer) {
        self.post = post
        self.player = player
    }

    var body: some View {
        ZStack {
            CustomVideoPlayer(player: player)
                .containerRelativeFrame([.horizontal, .vertical])
               

            VStack {
                Spacer()

                HStack(alignment: .bottom) {
                    titleView

                    VStack(spacing: 28) {

                        CircleImageView(imageUrl: "\(post.profileUrl)", size: .m)

                        ActionButton(text: "\(Int.random(in: 1...10000))", symbolName: "heart.fill") {}
                        ActionButton(text: "\(Int.random(in: 1...10000))", symbolName: "ellipsis.bubble.fill") {}
                        
                        ActionButton(symbolName: "bookmark.fill")
                        
                        ActionButton(symbolName: "arrowshape.turn.up.right.fill")
                        
                    }
                }.padding(.bottom, 80)

            }.padding()
        }
    }
}

struct ActionButton: View {

    var text: String? = nil
    var symbolName: String
    var onTapGesture: (() -> ())?

    var body: some View {

        Button {
            onTapGesture?()
        } label: {

            VStack {

                Image(systemName: symbolName)
                    .resizable()
                    .frame(width: 28, height: 28)
                    .foregroundStyle(.white)

                if let text {
                    Text("\(text)")
                        .font(.caption)
                        .foregroundStyle(.white)
                        .bold()
                }
            }
        }
    }
}

extension FeedCell {
    var titleView: some View {
        VStack(alignment: .leading) {
            Text(post.userFullName)
                .fontWeight(.semibold)
            Text(post.subtitle)
        }.foregroundStyle(.white)
            .font(.subheadline)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

