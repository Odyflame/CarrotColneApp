//
//  CarrotCloneAppApp.swift
//  CarrotCloneApp
//
//  Created by apple on 2021/07/15.
//

import SwiftUI

@main
struct CarrotCloneAppApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
