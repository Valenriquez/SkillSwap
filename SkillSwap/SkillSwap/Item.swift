//
//  Item.swift
//  SkillSwap
//
//  Created by Valeria Enríquez Limón on 29/03/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
