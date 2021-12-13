//
//  UserCellView.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 30.11.2021.
//

import SwiftUI

struct UserRowView: View {
    
    @ObservedObject var viewModel: UserViewModel
       
    
    var body: some View {
        NavigationView {
            List(viewModel.users, id: \.id) { user in
                HStack {
                Image(user.avatarImageName)
                    .resizable()
                    .iconStyle()
                    Text("\(user.name) \(user.surname)")
                        .textStyle()
            }
            }
        }
        .navigationBarHidden(false)
        .navigationTitle("friends")
        .toolbar{
            ToolbarItemGroup(placement: .navigationBarTrailing){
                NavigationLink("groups") {
                    GroupRowView(viewModel: GroupViewModel())
                }
                NavigationLink("news") {
                    NewsView(viewModel: NewsViewModel())
                }
            }
        }
    }
}

//struct UserRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserRowView()
//    }
//}

  


