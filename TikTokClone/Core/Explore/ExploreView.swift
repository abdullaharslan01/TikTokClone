//
//  ExploreView.swift
//  TikTokClone
//
//  Created by abdullah on 14.12.2024.
//

import SwiftUI

struct ExploreView: View {
    @State var searchingText: String = ""
    var body: some View {
        ScrollView {
            LazyVStack {
                
                ForEach(0..<20) { user in
                    UserCell(user: user)
                        .padding(.bottom, 10)
                }.searchable(text: $searchingText, prompt: Text("Search a user"))
                   
            }.padding(.horizontal)
        }.navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
    }
}

#Preview {
    NavigationStack {
        ExploreView()
    }
}
