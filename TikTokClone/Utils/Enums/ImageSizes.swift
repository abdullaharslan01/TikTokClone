//
//  ImageSizes.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import Foundation

enum ImageSizes {
    case xs, s, m, l, xl

    var size: CGFloat {
        switch self {
        case .xs: return 24
        case .s: return 48
        case .m: return 64
        case .l: return 96
        case .xl: return 128
        }
    }
}
