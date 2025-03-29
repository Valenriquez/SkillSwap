//
//  ContentView.swift
//  SkillSwap
//
//  Created by Valeria Enríquez Limón on 29/03/25.
//

import SwiftUI
 
struct ContentView: View {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false

    var body: some View {
        if isLoggedIn {
            MainAppView()
        } else {
            LoginView(onLoginSuccess: {
                isLoggedIn = true
            })
        }
    }
}

#Preview {
    ContentView()
}
