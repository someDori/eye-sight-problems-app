//
//  HomeView.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 04.01.25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geo in
                VStack(alignment: .center) {
                    Spacer()
                    Image(systemName: "eye.circle")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    NavigationLink(
                        destination: ProblemsView(geo: geo)
                    ) {
                        Text("Let's test your eyes")
                            .font(.largeTitle)
                            .padding(8)
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding()
                .toolbar {
                    ToolbarItem(placement: .navigation) {
                        Button {
                            print("pressed")
                        } label: {
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .frame(width: 40, height: 40)
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
