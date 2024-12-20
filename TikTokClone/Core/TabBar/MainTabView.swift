//
//  MainTabView.swift
//  TikTokClone
//
//  Created by abdullah on 14.12.2024.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedTab: TabItem = .Home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab(TabItem.Home.tabName ,systemImage: TabItem.Home.tabImage , value: TabItem.Home) {
                FeedView()
            }
            
            Tab(TabItem.Friends.tabName, systemImage: TabItem.Friends.tabImage, value: TabItem.Friends) {
                NavigationStack {
                    ExploreView()
                }
            }
            
            Tab(TabItem.UploadPost.tabName, systemImage: TabItem.UploadPost.tabImage, value: TabItem.UploadPost) {
                Text("Upload")
            }
            
            Tab(TabItem.Inbox.tabName, systemImage: TabItem.Inbox.tabImage, value: TabItem.Inbox) {
                NavigationStack {
                    NotificationsView()
                }
            }
            
            Tab(TabItem.Profile.tabName, systemImage: TabItem.Profile.tabImage, value: TabItem.Profile) {
                NavigationStack {
                    CurrentUserProfileView()
                }
                
            
            }
          
        }.tint(Color(.label))
        
    }
    
    
}

#Preview {
    MainTabView()
}

