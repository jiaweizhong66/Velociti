//
//  VelocitiApp.swift
//  Velociti
//
//  Created by Curry Zhong on 2024-09-07.
//

import SwiftUI

@main
struct VelocitiApp: App {
    @StateObject private var authManager = AuthManager() // Handle auth state
    
    var body: some Scene {
        WindowGroup {
            if authManager.isAuthenticated {
                MainContentView() // Replace with your main content view
            } else {
                LoginView()
            }
        }
    }
}

// Mock AuthManager for managing authentication state
class AuthManager: ObservableObject {
    @Published var isAuthenticated: Bool = false
}


