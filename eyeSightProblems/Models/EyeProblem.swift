//
//  EyeProblemsModel.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 04.01.25.
//

import Foundation

struct EyeProblem: Identifiable, Hashable {
    var id: UUID = UUID()
    var name: String
    var description: String?
    var types: [String]?
    var symptoms: [String]?
    var tests: [Test]
    var problemType: EyeProblemTypes?
}
