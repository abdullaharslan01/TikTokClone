//
//  UserCell.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import SwiftUI

struct UserCell: View {
    
    let user: Int
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            CircleImageView(imageUrl: "profile\(Int.random(in: 1...5))", size: .m)
            
            VStack(alignment: .leading) {
                Text("User: \(user)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("Test Name")
                    .font(.footnote)
            }
            
            
        }.frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    UserCell(user: 2)
        .padding(.horizontal)
}
