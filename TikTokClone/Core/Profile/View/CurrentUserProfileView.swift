//
//  CurrentUserProfileView.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 2) {
                ProfileHeaderView()
                PostGridView()
                
                
                
            }
        }.navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Sign Out") {
                        
                    }.foregroundStyle(.black)
                        .bold()
                }
            }
            .padding(.top)
    }
}

#Preview {
    NavigationStack {
        CurrentUserProfileView()
    }
}
