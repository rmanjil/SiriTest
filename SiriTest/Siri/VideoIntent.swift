//
//  VideoIntent.swift
//  SiriTest
//
//  Created by manjil on 07/08/2023.
//

import Foundation
import AppIntents
import SwiftUI

struct VideoIntent: AppIntent {
    static var title: LocalizedStringResource = "Say a phrase."
    
//    static var openAppWhenRun: Bool {
//        print("test working openAppWhenRun")
//       return true
//    }
//
    static var authenticationPolicy: IntentAuthenticationPolicy {
        .alwaysAllowed
    }
    
    func perform() async throws -> some IntentResult & ShowsSnippetView {
      //  print("test working")
        .result(value: true, view: VideoSnippet())
    }
}

struct VideoProvider: AppShortcutsProvider {

    static var appShortcuts: [AppShortcut] {
        AppShortcut(intent: VideoIntent(), phrases: ["play \(.applicationName)"])
    }
}
