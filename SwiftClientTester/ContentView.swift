//
//  ContentView.swift
//  SwiftClientTester
//
//  Created by Daniel Jilg on 22.06.21.
//

import SwiftUI
import TelemetryClient

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Push this button to send 100 Boops!")
            Button("100x Boop") {
                for _ in 0 ..< 100 {
                    TelemetryManager.send("boop")
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
