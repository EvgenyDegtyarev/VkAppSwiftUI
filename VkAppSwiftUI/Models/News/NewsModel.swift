//
//  NewsModel.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 06.12.2021.
//

import Foundation

struct NewsModel: Identifiable {
    var id = UUID()
    let newsImage: String
    let newsTitle: String
    let newsDescription: String
    let newsDate: String
    let newsViewCount: Int
}
