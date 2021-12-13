//
//  GroupModel.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 06.12.2021.
//

import Foundation

struct GroupModel: Identifiable {
    var id = UUID()
    let groupName: String
    let groupImage: String
}

