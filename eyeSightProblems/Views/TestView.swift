//
//  TestView.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 05.01.25.
//

import SwiftUI

struct TestView: View {
    var testService = IshiharaTestService()
    var testName: String
    
    var body: some View {
        VStack {
            Image("7-medium")
                .resizable()
                .scaledToFit()
                .frame(width: .infinity)
            Spacer()
            
        }
    }
}

#Preview {
    TestView(testName: "ishihara test")
}
