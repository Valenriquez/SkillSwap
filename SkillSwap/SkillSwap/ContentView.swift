//
//  ContentView.swift
//  SkillSwap
//
//  Created by Valeria Enríquez Limón on 29/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
    }
}

#Preview {
    ContentView()
}
