//
//  CustomVideoPlayer.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import SwiftUI
import AVKit


struct CustomVideoPlayer: UIViewControllerRepresentable {
    var player: AVPlayer
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = false
        controller.exitsFullScreenWhenPlaybackEnds = true
        controller.allowsPictureInPicturePlayback = true
        controller.videoGravity = .resizeAspectFill
        return controller
    }
    
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
