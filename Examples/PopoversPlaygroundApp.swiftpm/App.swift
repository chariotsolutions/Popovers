//
//  App.swift
//  PopoversPlaygroundApp
//
//  Created by A. Zheng (github.com/aheze) on 12/23/21.
//  Copyright © 2021 A. Zheng. All rights reserved.
//

import SwiftUI
import Popovers

@main
struct PopoversPlaygroundApp: App {
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        /// Make sure Popovers is ready. This avoid stuttering animations.
        .onChange(of: scenePhase) { _ in
            Popovers.prepare()
        }
    }
}
