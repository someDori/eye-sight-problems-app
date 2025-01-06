//
//  Difficulty.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 05.01.25.
//

import Foundation

enum Difficulty: String, Decodable {
    case easy, medium, hard, extreme
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self).lowercased()
        self = Difficulty(rawValue: value) ?? .easy
    }
}
