//
//  GroupViewModel.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 09.12.2021.
//
import Foundation
import Combine
import SwiftyJSON

class GroupViewModel: ObservableObject {
    
    //@Published private(set) var groups: VKGroup = []
    
    
   private(set) var groups = [
        GroupModel(groupName: "коллеги", groupImage: "GroupImage"),
        GroupModel(groupName: "мой город", groupImage: "GroupImage"),
        GroupModel(groupName: "клуб лыжников", groupImage: "GroupImage"),
        GroupModel(groupName: "шутка дня", groupImage: "GroupImage"),
        GroupModel(groupName: "новости района", groupImage: "GroupImage"),
        GroupModel(groupName: "загородный отдых", groupImage: "GroupImage"),
        GroupModel(groupName: "автолюбители", groupImage: "GroupImage"),
        GroupModel(groupName: "билеты в театр", groupImage: "GroupImage"),
        GroupModel(groupName: "#удалена", groupImage: "GroupImage"),
        GroupModel(groupName: "аренда квартир", groupImage: "GroupImage")
    ]
}


