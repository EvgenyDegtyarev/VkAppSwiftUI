//
//  UserCellView.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 30.11.2021.
//

import SwiftUI
import Kingfisher

struct UserRowView: View {
    
    @ObservedObject var viewModel: UserViewModel
    @State private var isRotated = false
    
    let networkService = NetworkService()
    
    init(viewModel: UserViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            List(viewModel.friends, id: \.id) { user in
//                    NavigationLink(destination: FullPhotoView(viewModel: PhotosViewModel), label:  {
                    HStack {
                        KFImage(user.userAvatarURL)
                        .resizable()
                        .iconStyle()
                        .rotationEffect(isRotated ? Angle(degrees: 360) : .zero)
                        .onTapGesture {
                            withAnimation{
                                self.isRotated.toggle()
                            }
                        }
                        Text("\(user.firstName) \(user.lastName)")
                            .textStyle()
                    }
                }
//            )
        
        }
        .onAppear(perform: self.viewModel.getUserFriends)
        .navigationBarHidden(false)
        .navigationTitle("friends")
        .toolbar{
            ToolbarItemGroup(placement: .navigationBarLeading){
                NavigationLink("groups") {
                    GroupRowView(viewModel: GroupViewModel(networkService: NetworkService()))
                }
                NavigationLink("news") {
                    NewsView(viewModel: NewsViewModel())
                }
            }
        }
    }
}
