//
//  StarterView.swift
//  StateAndDataFlowSUI
//
//  Created by Кирилл on 03.10.2023.
//

import SwiftUI

struct StarterView: View {

    @EnvironmentObject private var storageManager: StorageManager
    
    var body: some View {
        Group {
            if storageManager.isRegister {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(StorageManager())
    }
}
