//
//  ViewController.swift
//  SiriTest
//
//  Created by manjil on 07/08/2023.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    private lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Play", for: .normal)
        button.addTarget(self, action: #selector(showAction(_:)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        
        ])
       
    }

    @objc private func showAction(_ sender: UIButton) {
        let controller = UIHostingController(rootView: VideoSnippet())//VideoPlayerController()
        navigationController?.pushViewController(controller, animated: true)
    }

}

