//
//  SignUpView.swift
//  SkillSwap
//
//  Created by Valeria Enríquez Limón on 29/03/25.
//
import SwiftUI

struct SignUpView: View {
    @ObservedObject var viewModel: AuthViewModel
    var onSignUpSuccess: () -> Void
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing: 20) {
            Text("Crear cuenta")
                .font(.largeTitle)
                .bold()

            AuthTextField(placeholder: "Correo electrónico", text: $viewModel.credentials.email)
            AuthTextField(placeholder: "Contraseña", text: $viewModel.credentials.password, isSecure: true)
            AuthTextField(placeholder: "Confirmar contraseña", text: $viewModel.confirmPassword, isSecure: true)

            if let error = viewModel.errorMessage {
                Text(error)
                    .foregroundColor(.red)
                    .font(.caption)
            }

            Button("Registrarse") {
                viewModel.signUp()
                onSignUpSuccess()
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)

            Button("¿Ya tienes cuenta? Inicia sesión") {
                dismiss()
            }

            Spacer()
        }
        .padding()
    }
}
