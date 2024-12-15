//
//  UserStataView.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import SwiftUI

struct UserStatView: View {
    let counting: Int
    let title: String
    var body: some View {
       
                VStack {
                    Text("\(counting)")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        
                    Text(title)
                        .font(.caption)
                        .foregroundStyle(.gray)
                }.frame(width: 80, alignment: .center)
            }
    
    
    
}

#Preview {
    UserStatView(counting: 2, title: "Following")
}
