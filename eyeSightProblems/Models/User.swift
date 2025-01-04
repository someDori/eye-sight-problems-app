//
//  UserModel.swift
//  eyeSightProblems
//
//  Created by Demetre Panjakidze on 04.01.25.
//

import Foundation
import UIKit

struct User: Identifiable {
    var id: UUID = UUID()
    var name: String
    var username: String?
    var countryOfOrigin: String?
    var birthday: Date
    var profilePicture: UIImage?
    var gender: Gender
}

enum Gender: CaseIterable {
    case male, female, secret, other
}
