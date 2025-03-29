//
//  LoginView.swift
//  SkillSwap
//
//  Created by Valeria Enríquez Limón on 29/03/25.

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = AuthViewModel()
    @State private var showSignUp = false

    var onLoginSuccess: () -> Void  // Closure for successful login

    // Custom initializer
    init(onLoginSuccess: @escaping () -> Void) {
        self._viewModel = StateObject(wrappedValue: AuthViewModel())
        self.onLoginSuccess = onLoginSuccess
    }

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Bienvenido")
                    .font(.largeTitle)
                    .bold()

                AuthTextField(placeholder: "Correo electrónico", text: $viewModel.credentials.email)
                AuthTextField(placeholder: "Contraseña", text: $viewModel.credentials.password, isSecure: true)

                if let error = viewModel.errorMessage {
                    Text(error)
                        .foregroundColor(.red)
                        .font(.caption)
                }
                Button("Iniciar sesión") {
                    viewModel.login()
                    onLoginSuccess()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)


                Button("¿No tienes cuenta? Regístrate") {
                    showSignUp = true
                }
                .padding(.top, 8)

                // 👇 The hidden navigation link, bound to showSignUp
                NavigationLink(
                    destination: SignUpView(viewModel: viewModel, onSignUpSuccess: onLoginSuccess),
                    isActive: $showSignUp   
                ) {
                    EmptyView()
                }

                Spacer()
            }
            .padding()
        }
    }
}


 
