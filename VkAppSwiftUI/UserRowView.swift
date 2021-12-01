//
//  UserCellView.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 30.11.2021.
//

import SwiftUI

struct UserRowView: View {
    
    var body: some View {
        HStack {
            Image("UserImage")
                .resizable()
                .iconStyle()
            Text("Name")
                .textStyle()
            Text("Surname")
                .textStyle()
        }
            .frame(width: 370, height: 65, alignment: .leading)
                    .border(Color.gray)
    }

}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
