//
//  FeedService.swift
//  TikTokClone
//
//  Created by abdullah on 15.12.2024.
//

import Foundation

class FeedService {
    static let shared = FeedService()
    private init(){ }
    
    func getAllPosts()-> [Post] {
        let posts: [Post] = [
            
             Post(
                videoUrl: "https://videos.pexels.com/video-files/7095061/7095061-uhd_2732_1440_25fps.mp4",
                profileUrl: "profile1",
                title: "",
                subtitle: "Music expresses that which cannot be said and on which it is impossible to be silent.",
                userFullName: "Abdullah Arslan"
            ),
             
             Post(
                 videoUrl: "https://videos.pexels.com/video-files/6602935/6602935-uhd_2560_1080_25fps.mp4",
                 profileUrl: "profile8",
                 title: "", // Başlık
                 subtitle: "İmkansız aşk en güzeli değildir, en güçlüsüdür çünkü imkansız aşklar diğer aşklardan farklı olarak biz kendimizi yaratırız.",
                 userFullName: "Sevki"
             ),
            Post(
                videoUrl: "https://videos.pexels.com/video-files/29711045/12775344_640_360_24fps.mp4",
                profileUrl: "profile4",
                title: "Doğanın Huzuru",
                subtitle: "Koyunların arasında harika bir gün.",
                userFullName: "İbrahim Yıldırım"
            ),
            Post(
                videoUrl: "https://videos.pexels.com/video-files/28925436/12518810_2560_1440_30fps.mp4",
                profileUrl: "profile3",
                title: "Karda Yürüyüş",
                subtitle: "Eşimle birlikte karla kaplı bir dünyada.",
                userFullName: "Elif Kara"
            ),
            Post(
                videoUrl: "https://videos.pexels.com/video-files/7225748/7225748-uhd_2732_1440_25fps.mp4",
                profileUrl: "profile2",
                title: "Sıcak Anlar",
                subtitle: "Birlikte kahve ve kitap keyfi.",
                userFullName: "Emre Karaman"
            ),
            Post(
                videoUrl: "https://videos.pexels.com/video-files/6000620/6000620-uhd_2560_1440_24fps.mp4",
                profileUrl: "profile5",
                title: "Kitap ve Kahve",
                subtitle: "Kahve eşliğinde huzurlu bir okuma.",
                userFullName: "Ayşe Çelik"
            ),
            Post(
                videoUrl: "https://videos.pexels.com/video-files/4806333/4806333-uhd_2560_1440_30fps.mp4",
                profileUrl: "profile6",
                title: "Rüzgarla Dans",
                subtitle: "Life is a journey, not a destination.",
                userFullName: "Zeynep Şahin"
            ),
            Post(
                videoUrl: "https://videos.pexels.com/video-files/6214616/6214616-hd_1080_1920_25fps.mp4",
                profileUrl: "profile4",
                title: "Tatlı Bir Gün",
                subtitle: "Tarif açıklamalarda.",
                userFullName: "Ali Sarı"
            ),
            Post(
                videoUrl: "https://videos.pexels.com/video-files/29506656/12701640_2560_1440_24fps.mp4",
                profileUrl: "profile8",
                title: "Balon Keyfi",
                subtitle: "Gökyüzünde balonla yapılan eşsiz bir yolculuk.",
                userFullName: "Ece Yılmaz"
            )
        ]
        return posts
    }
}
