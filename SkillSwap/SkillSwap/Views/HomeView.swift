//
//  HomeView.swift
//  SkillSwap
//
//  Created by Valeria Enríquez Limón on 29/03/25.
//
import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: UserViewModel

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Bienvenido, Mario")
                        .font(.title2)
                        .bold()

                    Text("¿Qué deseas aprender hoy?")
                        .font(.headline)

                    HStack {
                        Text("Top recomendaciones para ti:")
                        Spacer()
                        Image(systemName: "magnifyingglass.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                    }

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(viewModel.user.skills) { skill in
                                SkillCardView(skill: skill)
                            }
                        }
                    }

                    Text("Personas que están apoyando a la comunidad:")
                    HStack {
                        Image(viewModel.user.profileImageName)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 50, height: 50)
                        Text("Ayudo a la comunidad")
                    }
                }
                .padding()
            }
            .navigationTitle("Explora")
        }
    }
}

