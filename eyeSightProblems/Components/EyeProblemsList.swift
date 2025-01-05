//
//  EyeProblemsList.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 05.01.25.
//

import SwiftUI

struct EyeProblemsList: View {
    @ObservedObject var eyeProblems: EyeProblems = .shared
    @Binding var showDialog: Bool
    @Binding var showAlert: Bool
    @Binding var chosenProblem: EyeProblem?
    var geo: GeometryProxy
    var numberOfColumns: Int
    
    var body: some View {
        LazyVGrid(
//            columns: [GridItem(.flexible()), GridItem(.flexible())]
            columns: Array(
                repeating: GridItem(.flexible()),
                count: numberOfColumns
            )
        ) {
            ForEach(eyeProblems.eyeProblems, id: \.id) { (problem: EyeProblem) in
                EyeProblemBox(
                    problem: problem,
                    width: geo.size.width / 2 - 20,
                    contentMode: .fit,
                    cornerRadius: 15,
                    lineWidth: 1,
                    lineColor: .black,
                    multilineTextAlignment: .center,
                    font: .title
                )
                    .onTapGesture {
                        chosenProblem = problem
                        if problem.tests.isEmpty {
                            showAlert = true
                        } else {
                            showDialog = true
                        }
                    }
            }
        }
    }
}
