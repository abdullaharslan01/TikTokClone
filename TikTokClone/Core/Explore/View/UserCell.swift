//
//  UserCell.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import SwiftUI

struct UserCell: View {
    
    let user: UserProfile
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            CircleImageView(imageUrl: user.profileImageUrl, size: .m)
            
            VStack(alignment: .leading) {
                Text("\(user.username)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("\(user.fullName)")
                    .font(.footnote)
            }
            
            
        }.frame(maxWidth: .infinity, alignment: .leading)
    }
}

