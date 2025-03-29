//
//  ProfileView.swift
//  SkillSwap
//
//  Created by Valeria Enríquez Limón on 29/03/25.
//
import SwiftUI

struct ProfileView: View {
    @ObservedObject var viewModel: UserViewModel

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Image(viewModel.user.profileImageName)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 120, height: 120)

                Text(viewModel.user.name)
                    .font(.title2)
                    .bold()

                Text("Mis habilidades:")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(viewModel.user.skills) { skill in
                            SkillCardView(skill: skill)
                        }
                    }
                }

                Text("Intereses:")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)

                HStack {
                    ForEach(viewModel.user.interests, id: \.self) { interest in
                        Text(interest)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 8)
                            .background(Color.purple.opacity(0.3))
                            .cornerRadius(10)
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Mi Perfil")
    }
}

