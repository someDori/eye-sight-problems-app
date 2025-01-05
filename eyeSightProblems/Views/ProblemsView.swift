//
//  ProblemsView.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 04.01.25.
//

import SwiftUI

struct ProblemsView: View {
    var geo: GeometryProxy
    @State var showDialog = false
    @State var showAlert = false
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
                    showAlert: $showAlert,
                    chosenProblem: $chosenProblem,
                    geo: geo,
                    numberOfColumns: 2
                )

                Spacer()
            }
            .navigationTitle("Eye problems")
            .navigationBarTitleDisplayMode(.large)
            .alert(
                "No tests for now",
                isPresented: $showAlert
            ) {
                Button("Cancel", role: .cancel) {
                    showAlert = false
                }
            } message: {
                Text("There are no tests for now to check this problem")
            }
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
                    showDialog = false
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
