//
//  DetailNews.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 06.12.2021.
//

import SwiftUI

struct DetailNews: View {
    var detailNew: NewsModel
    var body: some View {
        NavigationView {
            VStack {
                Image(detailNew.newsImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                Text(detailNew.newsTitle)
                    .font(.largeTitle)
                Text(detailNew.newsDescription)
                    .layoutPriority(10)
                    
                HStack{
                    Label("\(detailNew.newsViewCount)",systemImage: "eye.fill")
                    Text(detailNew.newsDate)
                }
                .padding()
                .foregroundColor(.secondary)
            }
            .padding()
        }
    }
}

struct DetailNews_Previews: PreviewProvider {
    static var previews: some View {
        DetailNews(detailNew: NewsList.news.first!)
    }
}
