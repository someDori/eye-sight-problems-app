//
//  EyeProblemBox.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 05.01.25.
//

import SwiftUI

struct EyeProblemBox: View {
    var problem: EyeProblem
    var width: CGFloat
    var contentMode: ContentMode
    var cornerRadius: Int
    var lineWidth: Int
    var lineColor: Color
    var multilineTextAlignment: TextAlignment
    var font: Font
    
    var body: some View {
        Text(problem.name)
            .font(font)
            .padding()
            .multilineTextAlignment(multilineTextAlignment)
            .frame(width: width)
            .fixedSize(horizontal: true, vertical: true)
            .aspectRatio(contentMode: contentMode)
            .overlay(
                RoundedRectangle(cornerRadius: CGFloat(cornerRadius))
                    .stroke(lineColor, lineWidth: CGFloat(lineWidth))
            )
    }
}

#Preview {
    GeometryReader { geo in
        EyeProblemBox(
            problem: EyeProblem(
                name: "Colour blindness",
                description: "Inability to distinguish certain colors.",
                types: ["Red-Green", "Blue-Yellow", "Complete"],
                symptoms: [
                    "Difficulty distinguishing red and green",
                    "Trouble differentiating blue and yellow",
                    "Complete lack of color perception"
                ],
                tests: [
                    Test(
                        name: "Ishihara Test",
                        description: "Uses color plates to identify red-green deficiencies."
                    ),
                    Test(
                        name: "Farnsworth-Munsell 100 Hue Test",
                        description: "Arranges colored caps in order of hue."
                    ),
                    Test(
                        name: "Cambridge Colour Test",
                        description: "Computer-based test for detailed analysis."
                    ),
                    Test(
                        name: "Anomaloscope Test",
                        description: "Measures color matching abilities."
                    )
                ],
                problemType: .colorBlindness
            ),
            width: geo.size.width / 2 - 20,
            contentMode: .fit,
            cornerRadius: 15,
            lineWidth: 1,
            lineColor: .black,
            multilineTextAlignment: .center,
            font: .title
        )
    }
}
