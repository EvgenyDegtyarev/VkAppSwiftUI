//
//  ContentView.swift
//  VkAppSwiftUI
//
//  Created by Евгений Дегтярев on 26.11.2021.
//

import SwiftUI
import Combine

struct LoginView: View {
    
    @State private var login = "user"
    @State private var password = "1234"
    @State private var shouldShowLogo: Bool = true
    @State private var showIncorrectCredentialAlert: Bool = false
    @Binding var showUserView: Bool
      
       private let keyboardIsOnPublisher = Publishers.Merge(
           NotificationCenter.default.publisher(for: UIResponder.keyboardWillChangeFrameNotification)
               .map { _ in true },
           NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
               .map { _ in false }
       )
           .removeDuplicates()
      
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Image("VKbackground")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geometry.size.width, height: geometry.size.height)
            }
            
            ScrollView(showsIndicators: false){
            VStack {
                if shouldShowLogo {
                    Image("VKlogo")
                        .resizable()
                        .frame(width: 120.0, height: 120.0)
                        .padding(.top, 100)
                        .padding(.bottom, 25)
                }
                
                HStack {
                Text("login")
                        .foregroundColor(.white)
                Spacer()
                    TextField("введите логин", text: self.$login)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 150)
                        .autocapitalization(.none)
                }
               
                HStack {
                Text("password").foregroundColor(.white)
                Spacer()
                    SecureField("введите пароль", text: self.$password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 150)
                }
                
            }
            .frame(maxWidth: 250)
            
                Button(action: self.onLoginPressed) {
                HStack {
                    Text("Log in")
                    Image(systemName: "signature")
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
            .alert(isPresented: $showIncorrectCredentialAlert) {
                Alert(
            title: Text("Error"),
            message: Text("Incorrect login or password. Try again"),
            dismissButton: .cancel()
            )
            }
        }
    }
    
    private func onLoginPressed(){
        if login == "user" && password == "1234" {
            self.showUserView = true
        } else {
            self.showIncorrectCredentialAlert = true
        }
    }
    }
    
extension UIApplication {
   func endEditing() {
       sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
   }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(showUserView: .constant(false))
    }
}

