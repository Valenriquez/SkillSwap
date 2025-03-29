//
//  UserViewModel.swift
//  SkillSwap
//
//  Created by Valeria Enríquez Limón on 29/03/25.
//
import Foundation

class UserViewModel: ObservableObject {
    @Published var user = User(
        name: "Claudia Tobias",
        profileImageName: "claudia",
        skills: [
            Skill(title: "Tennis", description: "Fui ganadora nacional, estoy en el representativo de Boregos", imageName: "tennis")
        ],
        interests: ["Diseño 3D", "Origami"]
    )

    func addSkill(_ skill: Skill) {
        user.skills.append(skill)
    }
}
