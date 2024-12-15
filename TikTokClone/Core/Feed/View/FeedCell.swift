//
//  FeedCell.swift
//  TikTokClone
//
//  Created by abdullah on 14.12.2024.
//

import SwiftUI

struct FeedCell: View {
    let post: Int
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(.systemPink))
                .containerRelativeFrame([.horizontal, .vertical])
                .overlay {
                    Text("\(post)")
                        .font(.headline)
                        .foregroundStyle(.white)

                }

            VStack {
                Spacer()

                HStack(alignment: .bottom) {
                    titleView

                    VStack(spacing: 28) {

                        CircleImageView(imageUrl: "profile1", size: .m)

                        ActionButton(text: "27", symbolName: "heart.fill") {}
                        ActionButton(text: "27", symbolName: "ellipsis.bubble.fill") {}
                        
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
            Text("Abdullah Arslan")
                .fontWeight(.semibold)
            Text("Rocket ship prepare for takeoff!!!")
        }.foregroundStyle(.white)
            .font(.subheadline)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    FeedCell(post: 2)

}
