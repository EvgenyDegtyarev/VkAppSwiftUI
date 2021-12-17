//
//  VKPhoto.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 16.12.2021.
//

import Foundation
import SwiftyJSON

struct VKPhoto {
    let id: Int
    let albumID: Int
    let ownerID: Int
    let sizes: [VKPhotoSize]
    let largeURL: String
}

extension VKPhoto {
    init(_ json: JSON) {
        self.id = json["id"].intValue
        self.albumID = json["album_id"].intValue
        self.ownerID = json["owner_id"].intValue
        let sizeJSONs = json["sizes"].arrayValue
        self.sizes = sizeJSONs.map { VKPhotoSize($0) }
        self.largeURL = sizes.first {$0.type == "1"}!.url
    }
}

