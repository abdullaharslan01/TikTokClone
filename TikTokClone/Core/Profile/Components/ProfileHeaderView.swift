//
//  ProfileHeaderView.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            CircleImageView(imageUrl: "profile1", size: .l)
            Text("@Abdullah Arslan")
                .font(.subheadline)
                .fontWeight(.semibold)
            HStack(spacing: 16) {
                UserStatView(counting: 1, title: "Following")
                UserStatView(counting: 10, title: "Followers")
                UserStatView(counting: 100, title: "Likes")
            }
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6), in: .rect(cornerRadius: 6))
                    
            }
            
            Divider()
            
        }
    }
    
 
}

#Preview {
    ProfileHeaderView()
}
