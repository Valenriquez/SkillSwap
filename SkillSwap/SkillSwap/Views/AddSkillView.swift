//
//  AddSkillView.swift
//  SkillSwap
//
//  Created by Valeria Enríquez Limón on 29/03/25.
//
import SwiftUI

struct AddSkillView: View {
    @ObservedObject var viewModel: UserViewModel
    @State private var title = ""
    @State private var message = ""

    var body: some View {
        VStack(alignment: .leading) {
            TextField("Título", text: $title)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextEditor(text: $message)
                .frame(height: 150)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray.opacity(0.3)))

            Button("Agregar") {
                let newSkill = Skill(title: title, description: message, imageName: "tennis")
                viewModel.addSkill(newSkill)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)

            Spacer()
        }
        .padding()
        .navigationTitle("Agregar habilidad")
    }
}

