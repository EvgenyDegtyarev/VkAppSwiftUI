//
//  GroupCellView.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 30.11.2021.
//

import SwiftUI

struct GroupRowView: View {
    var groups: [GroupModel] = GroupList.groups
    
    var body: some View {
        NavigationView {
            List(groups, id: \.id) { group in
                HStack {
                Image(group.groupImage)
                    .resizable()
                    .iconStyle()
                    VStack {
                    Text(group.groupName)
                        .textStyle()
                        Text("подписчиков: \(group.subscribersCount)")
                            .foregroundColor(.secondary)
                    }
            }
            }
        }
        .navigationTitle("groups")
    }
    }
    
struct GroupRowView_Previews: PreviewProvider {
    static var previews: some View {
        GroupRowView()
    }
}




