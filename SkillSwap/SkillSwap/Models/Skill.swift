//
//  Skill.swift
//  SkillSwap
//
//  Created by Valeria Enríquez Limón on 29/03/25.
//
import Foundation

struct Skill: Identifiable {
    let id = UUID()
    var title: String
    var description: String
    var imageName: String
}
