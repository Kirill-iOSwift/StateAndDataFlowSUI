//
//  ContentView.swift
//  StateAndDataFlowSUI
//
//  Created by Кирилл on 30.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var storageManager: StorageManager
    
    var body: some View {
        VStack {
            Text("Hi, \(storageManager.getNameUser("name"))")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            ButtonView(
                title: timer.buttonTitle,
                backgroundColor: .red,
                titleColor: .white,
                action: timer.startTimer
            )
            Spacer()
            ButtonView(
                title: "LogOut",
                backgroundColor: .blue,
                titleColor: .black,
                action: {
                    storageManager.deleteUser("name")
                    storageManager.isRegister.toggle()
                }
            )
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(StorageManager())
    }
}

