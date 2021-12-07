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
    let subscribersCount: Int
}

struct GroupList {
    static let groups = [
        GroupModel(groupName: "коллеги", groupImage: "GroupImage", subscribersCount: 100),
        GroupModel(groupName: "мой город", groupImage: "GroupImage", subscribersCount: 100012),
        GroupModel(groupName: "клуб лыжников", groupImage: "GroupImage", subscribersCount: 23789),
        GroupModel(groupName: "шутка дня", groupImage: "GroupImage", subscribersCount: 345),
        GroupModel(groupName: "новости района", groupImage: "GroupImage", subscribersCount: 4564),
        GroupModel(groupName: "загородный отдых", groupImage: "GroupImage", subscribersCount: 656787),
        GroupModel(groupName: "автолюбители", groupImage: "GroupImage", subscribersCount: 657),
        GroupModel(groupName: "билеты в театр", groupImage: "GroupImage", subscribersCount: 3453),
        GroupModel(groupName: "#удалена", groupImage: "GroupImage", subscribersCount: 1),
        GroupModel(groupName: "аренда квартир", groupImage: "GroupImage", subscribersCount: 324),
    ]
}

