//
//  VKFriends.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 16.12.2021.
//

import Foundation
import SwiftyJSON

struct VKFriends {
    let id: Int
    let firstName: String
    let lastName: String
    let userAvatarURL: URL
}

extension VKFriends {
    init(_ json: JSON) {
        self.id = json["id"].intValue
        self.firstName = json["first_name"].stringValue
        self.lastName = json["last_name"].stringValue
        self.userAvatarURL = json["photo_200"].url!
    }
}
