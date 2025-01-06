//
//  TestView.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 05.01.25.
//

import SwiftUI

struct TestView: View {
    var testService = IshiharaTestService()
    
    var body: some View {
        VStack {
            Button("Load questions") {
                testService.loadQuestions()
            }
        }
    }
}

#Preview {
    TestView()
}
