//
//  User.swift
//  SkillSwap
//
//  Created by Valeria Enríquez Limón on 29/03/25.
//
import Foundation

struct User: Identifiable {
    let id = UUID()
    var name: String
    var profileImageName: String
    var skills: [Skill]
    var interests: [String]
}

