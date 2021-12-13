//
//  UserModel.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 03.12.2021.
//

import Foundation

struct UserModel: Identifiable {
    var id = UUID()
    let name: String
    let surname: String
    let avatarImageName: String
}
