//
//  VideoSnippet.swift
//  SiriTest
//
//  Created by manjil on 07/08/2023.
//

import SwiftUI
import AVFoundation
import AVKit

let audioUrl = URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3")!
let imageURL = URL(string: "https://fastly.picsum.photos/id/137/200/300.jpg?hmac=5vAnK2h9wYgvt2769Z9D1XYb8ory9_zB0bqDgVjgAnk")!
struct VideoSnippet: View {
    
    let avPlayer = AVPlayer(url: url)
    var body: some View {
        VStack {
            VideoPlayer(player: avPlayer).frame(height: 200).padding(.vertical)
        }.onAppear {
            avPlayer.play()
        }
    }
    
}
