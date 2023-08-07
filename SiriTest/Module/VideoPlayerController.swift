//
//  VideoPlayerController.swift
//  SiriTest
//
//  Created by manjil on 07/08/2023.
//

import UIKit
import AVKit

class VideoPlayerController: UIViewController {
    let url = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4")!
    
    private lazy var playerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    var player: AVPlayer!
    var playerLayer: AVPlayerLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(playerView)
        
        NSLayoutConstraint.activate([
            playerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            playerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            playerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            playerView.heightAnchor.constraint(equalTo: playerView.widthAnchor, multiplier: 9 / 16)
        ])
        
        player = AVPlayer(url: url)
        playerLayer = AVPlayerLayer(player: player)
        playerView.layer.addSublayer(playerLayer)
        player.play()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        playerLayer.frame =  playerView.bounds
    }
}
