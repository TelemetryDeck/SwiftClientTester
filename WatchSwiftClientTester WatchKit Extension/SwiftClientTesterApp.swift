//
//  SwiftClientTesterApp.swift
//  WatchSwiftClientTester WatchKit Extension
//
//  Created by Daniel Jilg on 21.10.21.
//

import SwiftUI
import TelemetryClient

@main
struct SwiftClientTesterApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
    
    init() {
        let configuration = TelemetryManagerConfiguration(appID: "FA469AE1-1D1B-419D-B74C-0748C0325AFC")
        configuration.defaultUser = UUID().uuidString
        
        TelemetryManager.initialize(with: configuration)
        
        TelemetryManager.send("applicationDidFinishLaunching")
    }
}
