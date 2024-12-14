//
//  TabItem.swift
//  TikTokClone
//
//  Created by abdullah on 14.12.2024.
//

import Foundation

enum TabItem: CaseIterable, Hashable {
    case Home
    case Friends
    case UploadPost
    case Inbox
    case Profile
    
    var tabImage: String {
        switch self {
        case .Home:
            return "house.fill"
        case .Friends:
            return "person.2"
        case .UploadPost:
            return "plus"
        case .Inbox:
            return "heart"
        case .Profile:
            return "person"
        }
    }
    
    var tabImageFill: String {
        switch self {
        case .Home, .Friends, .Inbox, .Profile:
            return tabImage + ".fill"
        case .UploadPost:
            return tabImage
            
            
    }
        }
        
        var tabName: String {
            switch self {
            case .Home:
                return "Home"
            case .Friends:
                return "Friends"
            case .UploadPost:
                return ""
            case .Inbox:
                return "Inbox"
            case .Profile:
                return "Profile"
            }
        }
        
    }
