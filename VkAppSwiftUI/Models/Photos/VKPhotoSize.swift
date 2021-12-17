//
//  VKPhotoSize.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 16.12.2021.
//

import Foundation
import SwiftyJSON

struct VKPhotoSize {
    let url: String
    let width: Int
    let height: Int
    let type: String
}

extension VKPhotoSize {
    init(_ json: JSON) {
        self.url = json["url"].stringValue
        self.width = json["width"].intValue
        self.height = json["height"].intValue
        self.type = json["type"].stringValue
    }
}
