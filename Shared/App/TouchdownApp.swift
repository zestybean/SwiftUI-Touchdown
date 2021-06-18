//
//  TouchdownApp.swift
//  Shared
//
//  Created by Brando Lugo on 6/8/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
