//
//  SkillCardView.swift
//  SkillSwap
//
//  Created by Valeria Enríquez Limón on 29/03/25.
//
import SwiftUI

struct SkillCardView: View {
    var skill: Skill

    var body: some View {
        VStack(alignment: .leading) {
            Image(skill.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 180, height: 100)
                .clipped()

            Text(skill.title)
                .font(.headline)

            Text(skill.description)
                .font(.caption)
                .lineLimit(2)
        }
        .frame(width: 180)
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}

