//
//  AuthViewModel.swift
//  SkillSwap
//
//  Created by Valeria Enríquez Limón on 29/03/25.
//
import SwiftUI
import Foundation
import Combine

class AuthViewModel: ObservableObject {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    @Published var credentials = UserCredentials()
    @Published var confirmPassword: String = ""
    @Published var errorMessage: String?
    
    func login() {
        guard !credentials.email.isEmpty, !credentials.password.isEmpty else {
            errorMessage = "Por favor completa todos los campos"
            return
        }
        errorMessage = nil
        print("Logging in with email: \(credentials.email)")
        // Add real auth logic here
        isLoggedIn = true
    }

    func signUp() {
        guard !credentials.email.isEmpty, !credentials.password.isEmpty, !confirmPassword.isEmpty else {
            errorMessage = "Por favor completa todos los campos"
            return
        }

        guard credentials.password == confirmPassword else {
            errorMessage = "Las contraseñas no coinciden"
            return
        }

        errorMessage = nil
        print("Signing up with email: \(credentials.email)")
        // Add real sign-up logic here
    }
}

