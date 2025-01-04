//
//  EyeProblemsModel.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 04.01.25.
//

import Foundation

enum EyeProblemTypes: CaseIterable {
    case colorBlindness
    case reflectiveErrors
}

struct EyeProblem: Identifiable {
    var id: UUID = UUID()
    var name: String
    var description: String?
    var types: [String]?
    var symptoms: [String]?
    var tests: [Test]
}

struct Test: Identifiable {
    var id: UUID = UUID()
    var name: String
    var description: String
}
