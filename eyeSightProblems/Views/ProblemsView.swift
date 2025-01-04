//
//  ProblemsView.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 04.01.25.
//

import SwiftUI

struct ProblemsView: View {
    @State var geo: GeometryProxy
    @ObservedObject var eyeProblems: EyeProblems = EyeProblems.shared
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                LazyVGrid(
                    columns: [GridItem(.flexible()), GridItem(.flexible())]
                ) {
                    ForEach(eyeProblems.eyeProblems, id: \.id) { (problem: EyeProblem) in
                        Text(problem.name)
                            .font(.title)
                            .padding()
                            .multilineTextAlignment(.center)
                            .frame(width: geo.size.width / 2 - 20)
                            .fixedSize(horizontal: true, vertical: true)
                            .aspectRatio(contentMode: .fit)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(.black, lineWidth: 1)
                            )
                            .onTapGesture {
                                print(problem.name)
                            }
                    }
                    
                }
                .padding()
                Spacer()
            }
            .navigationTitle("Problems")
            
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    GeometryReader { geo in
        ProblemsView(geo: geo)
    }
}
