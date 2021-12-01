//
//  ViewStyle.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 01.12.2021.
//

import SwiftUI

extension View {
    func iconStyle() -> some View {
        return self.modifier(IconModifier())
    }
    func textStyle() -> some View {
        return self.modifier(TextModifier())
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 50, height: 50)
            .background(
                RoundedRectangle(cornerRadius: 10, style: .continuous))
            .cornerRadius(100)
            .shadow(color: .blue, radius: 5)
            .padding(.leading, 10)
            
    }
}

struct TextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.leading, 20)
            .font(.system(size: 25, weight: .ultraLight, design: .rounded))
}
}
