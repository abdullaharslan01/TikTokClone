//
//  NotificationsView.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import SwiftUI

struct NotificationsView: View {
    @StateObject var vm = NotificationViewModel()
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 24) {
                
                ForEach(vm.notifications) { notification in
                    
                    NotificationCell(notification: notification)
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
