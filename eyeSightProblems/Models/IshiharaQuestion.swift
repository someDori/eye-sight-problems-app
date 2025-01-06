//
//  Game.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 05.01.25.
//

import Foundation

struct IshiharaQuestion: Identifiable, Decodable {
    var id: UUID = UUID()
    var imagePath: String
    var answers: [Int]
    var correctAnswer: Int
    var difficulty: Difficulty
    
    enum CodingKeys: String, CodingKey {
        case imagePath, answers, correctAnswer, difficulty
    }
    
    init(from decoder: Decoder) throws {
        self.id = UUID()
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.imagePath = try container.decode(String.self, forKey: .imagePath)
        self.answers = try container.decode([Int].self, forKey: .answers)
        self.correctAnswer = try container.decode(Int.self, forKey: .correctAnswer)
        self.difficulty = try container.decode(Difficulty.self, forKey: .difficulty)
    }
}
