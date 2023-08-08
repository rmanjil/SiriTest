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
struct VideoSnippet: View {
    
    @State  var audioPlayer: AVAudioPlayer?
    let avPlayer = AVPlayer(url: audioUrl)
    var body: some View {
        VStack {
           Text("name work")
                .padding()
         //   VideoPlayer(player: avPlayer).frame(height: 200).padding(.vertical)
        }.onAppear {
            playSound()
            print("play")
            avPlayer.play()
        }
    }
    
    func playSound() {
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            try AVAudioSession.sharedInstance().setActive(false)
            try AVAudioSession.sharedInstance().setActive(true)
            
//            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
//            audioPlayer?.prepareToPlay()
//            audioPlayer?.play()
            
        } catch {
            print("Error playing sound: \(error.localizedDescription)")
        }
    }
}
