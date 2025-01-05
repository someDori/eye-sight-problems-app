//
//  Game.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 05.01.25.
//

import Foundation

struct SingleTurn: Identifiable {
    var id: UUID = UUID()
    var imagePath: String
    var answers: [Int]
    var correctAnswer: Int
    var difficulty: String
}
