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
            GeometryReader { _ in
                VStack(alignment: .center) {
                    Spacer()
                    Image(systemName: "eye.circle")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    NavigationLink(destination: Text("testing")) {
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
