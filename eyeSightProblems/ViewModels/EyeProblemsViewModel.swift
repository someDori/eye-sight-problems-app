//
//  EyeProblemsViewModel.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 04.01.25.
//

import Foundation

class EyeProblems: ObservableObject {
    static let shared = EyeProblems()
    
    @Published var eyeProblems: [EyeProblem] = [
        EyeProblem(
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
        EyeProblem(
            name: "Refractive Errors",
            description: "Problems focusing light due to the shape of the eye.",
            types: ["Myopia", "Hyperopia", "Astigmatism", "Presbyopia"],
            symptoms: [
                "Blurred vision",
                "Difficulty focusing on distant or near objects"
            ],
            tests: [],
            problemType: .reflectiveError
        ),
        EyeProblem(
            name: "Amblyopia",
            description: "Reduced vision in one eye due to poor development.",
            types: nil,
            symptoms: ["Blurred vision in one eye", "Poor depth perception"],
            tests: [
                Test(
                    name: "Cover Test",
                    description: "Identifies eye misalignment."
                ),
                Test(
                    name: "Visual Acuity Test",
                    description: "Compares vision in both eyes."
                )
            ],
            problemType: .amblyopia
        )
    ]
}
