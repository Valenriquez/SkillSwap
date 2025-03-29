//
//  MainAppView.swift
//  SkillSwap
//
//  Created by Valeria Enríquez Limón on 29/03/25.
//
import SwiftUI

struct MainAppView: View {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    @State private var showSettings = false

    var body: some View {
        NavigationStack {
            TabView {
                HomeView(viewModel: UserViewModel())
                    .tabItem {
                        Label("Explora", systemImage: "magnifyingglass")
                    }

                ProfileView(viewModel: UserViewModel())
                    .tabItem {
                        Label("Perfil", systemImage: "person.circle")
                    }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        showSettings = true
                    }) {
                        Label("Settings", systemImage: "gear")
                    }
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isLoggedIn = false
                    }) {
                        Label("Cerrar sesión", systemImage: "rectangle.portrait.and.arrow.right")
                    }
                }
            }
            .navigationTitle("Mi Aplicación")
            .navigationBarTitleDisplayMode(.inline)
            .sheet(isPresented: $showSettings) {
                SettingsView()
            }
        }
    }
}

