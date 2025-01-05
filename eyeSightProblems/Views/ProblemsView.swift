//
//  ProblemsView.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 04.01.25.
//

import SwiftUI

struct ProblemsView: View {
    @State var geo: GeometryProxy
    @State var showDialog = false
    @State var chosenProblem: EyeProblem?

    var body: some View {
        NavigationStack {
            VStack() {
                Text(Constants.pageFirstDescription)
                    .font(.title2)

                Text(Constants.pageSecondDescription)
                    .font(.title2)
                    .padding(.top)
                
                Spacer()

                EyeProblemsList(
                    showDialog: $showDialog,
                    chosenProblem: $chosenProblem,
                    geo: geo,
                    numberOfColumns: 2
                )

                Spacer()
            }
            .navigationTitle("Eye problems")
            .navigationBarTitleDisplayMode(.large)
            .confirmationDialog(
                "Choose a test",
                isPresented: $showDialog,
                titleVisibility: .visible
            ) {
                ForEach(chosenProblem?.tests ?? [], id: \.self) { (test: Test) in
                    Button(test.name) {
                        // Handle test selection
                    }
                }
                Button("Cancel", role: .cancel) {
                    // Handle cancel action
                }
            }
            .padding()
        }
    }
}

#Preview {
    GeometryReader { geo in
        ProblemsView(geo: geo)
    }
}
