//
//  GroupCellView.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 30.11.2021.
//

import SwiftUI

struct GroupRowView: View {
    
   @ObservedObject var viewModel: GroupViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.groups, id: \.id) { group in
                HStack {
                    Image(group.groupImage)
                    .resizable()
                    .iconStyle()
                    VStack(alignment: .leading) {
                        Text(group.groupName)
                            .textStyle()
                    }
            }
            }
        }
        //.onAppear(perform: self.viewModel.groups.getUserGroups)
        .navigationTitle("groups")
    }
    }
    
//struct GroupRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        GroupRowView()
//    }
//}




