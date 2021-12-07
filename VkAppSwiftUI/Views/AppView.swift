//
//  AppView.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 03.12.2021.
//

import SwiftUI

struct AppView: View {
    
    @State private var shouldShowUserView: Bool = false
    
    var body: some View {
        NavigationView {
            HStack {
                LoginView(showUserView: $shouldShowUserView)
                
                NavigationLink(isActive: $shouldShowUserView) {
                    UserRowView()
                } label: {
                    EmptyView()
                }
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
