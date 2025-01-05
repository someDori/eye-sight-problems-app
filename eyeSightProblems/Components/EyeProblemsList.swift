//
//  EyeProblemsList.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 05.01.25.
//

import SwiftUI

struct EyeProblemsList: View {
    @ObservedObject var eyeProblems: EyeProblems = .shared
    var geo: GeometryProxy
    @Binding var showDialog: Bool
    @Binding var chosenProblem: EyeProblem?
    
    var body: some View {
        LazyVGrid(
            columns: [GridItem(.flexible()), GridItem(.flexible())]
        ) {
            ForEach(eyeProblems.eyeProblems, id: \.id) { (problem: EyeProblem) in
                EyeProblemBox(problem: problem, geo: geo)
                    .onTapGesture {
                        chosenProblem = problem
                        showDialog = true
                    }
            }
        }
    }
}
