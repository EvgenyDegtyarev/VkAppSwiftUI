//
//  ContentView.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 26.11.2021.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @State private var login = ""
    @State private var password = ""
    @State private var shouldShowLogo: Bool = true
      
       private let keyboardIsOnPublisher = Publishers.Merge(
           NotificationCenter.default.publisher(for: UIResponder.keyboardWillChangeFrameNotification)
               .map { _ in true },
           NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
               .map { _ in false }
       )
           .removeDuplicates()
      

    
    var body: some View {
        ZStack {
            Image("VKbackground")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false){
            VStack {
                if shouldShowLogo {
                    Image("VKlogo")
                        .resizable()
                        .frame(width: 120.0, height: 120.0)
                        .padding(.top, 100)
                        .padding(.bottom, 100)
                        
                }
                HStack {
                Text("login")
                        .foregroundColor(.white)
                Spacer()
                    TextField("Login", text: self.$login)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 150)
                }
                HStack {
                Text("password").foregroundColor(.white)
                Spacer()
                    SecureField("Password", text: self.$password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 150)
                }
            }
            .frame(maxWidth: 250)
            
            Button(action: { print("Hello") }) {
                HStack {
                    Text("Log in")
                    Image(systemName: "arrow.down")
                }
            }
            .font(.largeTitle)
            .padding(.top, 20)
            .padding(.bottom, 50)
            .disabled(login.isEmpty || password.isEmpty)
            
            }
        
            .onReceive(keyboardIsOnPublisher) { isKeyboardOn in
                withAnimation(Animation.easeInOut(duration: 0.5)) {
                    self.shouldShowLogo = !isKeyboardOn
                }
            }
            .onTapGesture {
                UIApplication.shared.endEditing()
        }
        }
    }
       

    }
    

        

extension UIApplication {
   func endEditing() {
       sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
   }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
