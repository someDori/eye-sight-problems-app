//
//  GameService.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 05.01.25.
//

import Foundation

class GameService {
    var currentScore: Int
    var numberOfQuestions: Int
    var gameStarted: Bool
    
    init(currentScore: Int, numberOfQuestions: Int) {
        self.currentScore = currentScore
        self.numberOfQuestions = numberOfQuestions
        self.gameStarted = false
    }
    
    func startGame() {
        gameStarted = true
    }
}
