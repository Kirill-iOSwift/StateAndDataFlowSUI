//
//  StorageManager.swift
//  StateAndDataFlowSUI
//
//  Created by Кирилл on 12.10.2023.
//

import Foundation

class StorageManager: ObservableObject {
    
    @Published var isRegister = UserDefaults.standard.bool(forKey: "bool")
    let userDefault = UserDefaults.standard
    
    func saveUser(_ name: String, _ key: String) {
        userDefault.set(name, forKey: key)
        userDefault.set(true, forKey: "bool")
    }
    
    func deleteUser(_ key: String) {
        userDefault.removeObject(forKey: key)
        userDefault.removeObject(forKey: "bool")
    }
    
    func getNameUser(_ key: String) -> String {
        userDefault.string(forKey: key) ?? ""
    }
}


