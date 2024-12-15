//
//  ExploreView.swift
//  TikTokClone
//
//  Created by abdullah on 14.12.2024.
//

import SwiftUI

struct ExploreView: View {
    @State var searchingText: String = ""
    
    @StateObject var vm = ExplorerViewModel()
    var body: some View {
        ScrollView {
            LazyVStack {
                
                ForEach(vm.profiles) { user in
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
