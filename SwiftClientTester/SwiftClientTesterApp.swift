//
//  SwiftClientTesterApp.swift
//  SwiftClientTester
//
//  Created by Daniel Jilg on 22.06.21.
//

import SwiftUI
import TelemetryClient

@main
struct SwiftClientTesterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    init() {
        let configuration = TelemetryManagerConfiguration(
            appID: "FA469AE1-1D1B-419D-B74C-0748C0325AFC"
        )
        
        TelemetryManager.initialize(with: configuration)
        
        TelemetryManager.send("applicationDidFinishLaunching")
    }
}
