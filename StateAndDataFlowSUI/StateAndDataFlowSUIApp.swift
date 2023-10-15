//
//  StateAndDataFlowSUIApp.swift
//  StateAndDataFlowSUI
//
//  Created by Кирилл on 30.09.2023.
//

import SwiftUI

@main
struct StateAndDataFlowSUIApp: App {
    
    @StateObject private var storageManager = StorageManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(storageManager)
        }
    }
}
