//
//  NotificationsView.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 24) {
                
                ForEach(0..<3) { notification in
                    
                    NotificationCell()
                }
                
            }.padding(.horizontal)
        }.navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
    }
}

#Preview {
    NavigationStack {
        NotificationsView()
    }
}
