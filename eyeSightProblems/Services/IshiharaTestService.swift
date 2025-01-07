//
//  GameService.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 05.01.25.
//

import Foundation

class IshiharaTestService {
    private var shared = IshiharaTestViewModel.shared
    private(set) var questions: [IshiharaQuestion] = []
    private(set) var currentQuestionIndex = 0
    private(set) var score = 0
    private(set) var isGameOnGoing = false
    
    func loadQuestions() {
        questions = shared.loadQuestionsFromFile()
        print(questions)
    }
    
    func startTest() {
        loadQuestions()
        currentQuestionIndex = 0
        score = 0
        isGameOnGoing = true
    }
    func getCurrentQuestion() -> IshiharaQuestion? {
        guard currentQuestionIndex < questions.count else { return nil }
        return questions[currentQuestionIndex]
    }
    
    func submitAnswer(_ answer: Int) -> Bool {
        guard let currentQuestion = getCurrentQuestion() else { return false }
        let isCorrect = currentQuestion.correctAnswer == answer
        if isCorrect {
            score += 1
        }
        currentQuestionIndex += 1
        return isCorrect
    }
    
    func stopTest() {
        isGameOnGoing = false
        questions = []
        currentQuestionIndex = 0
        score = 0
    }
    
    func getFinalScore() -> Int {
        isGameOnGoing = false
        return score
    }
}
