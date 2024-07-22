//
//  LoginView.swift
//  Untitled Unmastered
//
//  Created by Fiifi Botchway on 4/25/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var profile = false
    func login(){
        let info = loginInfo(username: username, password: password)
        NetworkManager.shared.fetchAccount(userInfo: info) { user in
        thisUser=user
        }
    }
  //  let blue = Color(hue: 0.9, saturation: 0.8, brightness: 0.9, opacity: 1)

    var body: some View {
        ZStack {
                Rectangle()
                    .fill(Gradient(colors: [.blue, .white]))
                    .ignoresSafeArea()
            }
        logo
        VStack{
            HStack{
                Text("Username: ")
                TextField("Username", text: $username).autocapitalization(.none)
            }.padding(15)
            HStack{
                Text("Password: ")
                SecureField("Password", text: $password).autocapitalization(.none)
            }.padding(15)
//                .autocapitalization(.none)
        }
            //.background(.blue)
        NavigationLink{
            TabBarViewController()
                .navigationBarBackButtonHidden(true)
        }label:{
            loginButton}.gesture(TapGesture().onEnded{login()})
        ZStack {
                Rectangle()
                    .fill(Gradient(colors: [.white, .blue]))
                    .ignoresSafeArea()
            }
    }
    
}

private var logo: some View{
    Image("iris")
    .resizable()
    .scaledToFit()
    .frame(width: 200, height: 200, alignment: .center)
//    .shadow(color: Color.blue.opacity(5.0), radius: 5, x: 5, y: 5)
}

private var loginButton: some View{
    Text("Login")
                .font(.title2)
                .foregroundColor(.white)
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 15))
        }


#Preview {
    LoginView()
}
