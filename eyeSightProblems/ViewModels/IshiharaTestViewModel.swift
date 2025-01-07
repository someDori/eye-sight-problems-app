//
//  IshiharaTestViewModel.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 05.01.25.
//

import Foundation

class IshiharaTestViewModel: ObservableObject {
    static let shared = IshiharaTestViewModel()
    
    func loadQuestionsFromFile() -> [IshiharaQuestion] {
        guard let url = Bundle.main.url(forResource: "IshiharaQuestions", withExtension: "json") else {
            print("Failed to locate file")
            return []
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            return try decoder.decode([IshiharaQuestion].self, from: data)
        } catch {
            print("Failed to load or decode JSON: \(error)")
        }
        
        return []
    }
}
