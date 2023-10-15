//
//  RegisterView.swift
//  StateAndDataFlowSUI
//
//  Created by Кирилл on 03.10.2023.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var inputName = ""
    @EnvironmentObject private var storageManager: StorageManager
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name...", text: $inputName)
                    .multilineTextAlignment(.center)
                Text(inputName.count.formatted())
                    .foregroundColor(inputName.count < 3 ? .red : .green)
            }
            .padding()
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(inputName.count < 3)
        }
    }
    
    private func registerUser() {
        if !inputName.isEmpty {
            storageManager.saveUser(inputName, "name")
            storageManager.isRegister.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
