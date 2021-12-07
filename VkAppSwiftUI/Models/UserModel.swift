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

struct UserList {
    static let users = [
        UserModel(name: "Evgeny", surname: "Degtyarev", avatarImageName: "UserImage"),
        UserModel(name: "Ivan", surname: "Petrov", avatarImageName: "UserImage"),
        UserModel(name: "Petr", surname: "Rich", avatarImageName: "UserImage"),
        UserModel(name: "John", surname: "Chi", avatarImageName: "UserImage"),
        UserModel(name: "Kate", surname: "Li", avatarImageName: "UserImage"),
        UserModel(name: "Alex", surname: "Abraham", avatarImageName: "UserImage"),
        UserModel(name: "Jack", surname: "London", avatarImageName: "UserImage"),
        UserModel(name: "Jane", surname: "Malone", avatarImageName: "UserImage"),
        UserModel(name: "Masha", surname: "Shi", avatarImageName: "UserImage"),
        UserModel(name: "Sasha", surname: "Ivanova", avatarImageName: "UserImage"),
        UserModel(name: "Evgeny", surname: "Green", avatarImageName: "UserImage"),
        UserModel(name: "Ivan", surname: "Charls", avatarImageName: "UserImage"),
        UserModel(name: "Petr", surname: "Simonov", avatarImageName: "UserImage"),
        UserModel(name: "John", surname: "Oshea", avatarImageName: "UserImage"),
        UserModel(name: "Kate", surname: "Round", avatarImageName: "UserImage"),
        UserModel(name: "Alex", surname: "", avatarImageName: "UserImage"),
        UserModel(name: "Jack", surname: "Rash", avatarImageName: "UserImage"),
        UserModel(name: "Jane", surname: "Zaitseva", avatarImageName: "UserImage"),
        UserModel(name: "Masha", surname: "Degtyareva", avatarImageName: "UserImage"),
        UserModel(name: "Sasha", surname: "Petrova", avatarImageName: "UserImage")
    ]
}
