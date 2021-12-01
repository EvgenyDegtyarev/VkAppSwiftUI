//
//  GroupCellView.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 30.11.2021.
//

import SwiftUI

struct GroupRowView: View {
    
    var body: some View {
        GroupRow {
            HStack {
            Image("GroupImage")
                .resizable()
                .iconStyle()
            Text("group name")
                    .textStyle()
        }
        }
    }
    
}

struct GroupRowView_Previews: PreviewProvider {
    static var previews: some View {
        GroupRowView()
    }
}

struct GroupRow<Content: View>: View {
    var content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        content
            .padding(.leading, -150)
            .frame(width: 370, height: 65)
            .border(Color.gray)
            
    }
}

