//
//  AppView.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 03.12.2021.
//

import SwiftUI

struct AppView: View {
    
    @State private var shouldShowUserView: Bool = false
    @AppStorage("vkToken") var token: String?
    
    var body: some View {
        NavigationView {
            HStack {
                if token == nil {
                    VKLoginWebView()
                } else {
                    UserRowView(viewModel: UserViewModel(networkService: NetworkService()))
                }
            }
        }
    }
}


