//
//  GameService.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 05.01.25.
//

import Foundation

class TestService {
    
    var currentScore: Int
    var numberOfQuestions: Int
    var testStarted: Bool
    
    init(currentScore: Int, numberOfQuestions: Int) {
        self.currentScore = currentScore
        self.numberOfQuestions = numberOfQuestions
        self.testStarted = false
    }
    
    func startTest() {
        testStarted = true
    }
    
    func stopTest() {
        testStarted = false
    }
}
