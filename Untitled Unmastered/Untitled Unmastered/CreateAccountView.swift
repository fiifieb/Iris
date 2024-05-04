//
//  CreateAccountViewController.swift
//  Untitled Unmastered
//
//  Created by Fiifi Botchway on 4/25/24.
//

import SwiftUI

struct CreateAccountView: View {
    @State private var username = ""
    @State private var password = ""
//    @State private var user:User
    private func createUser(){
        let user = loginInfo(username: username, password: password)
        NetworkManager.shared.createNewUser(info: user){user in }
        NetworkManager.shared.fetchAccount(user: user){user in }
    }
    private var logoPic: some View{
        HStack{
            Image("iris")
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300, alignment: .center)
            .padding(.top,-50)
        }
    }
    var body: some View {
        //profilePic
        NavigationStack{
            logoPic
            VStack(spacing:10){
                HStack(spacing:0){
                    Text("Username: ")
                    TextField("Username", text: $username)
                }.padding(15)
                HStack{
                    Text("Password: ")
                    TextField("Password", text: $password)
                }.padding(15)
                HStack{
                    Text("Confirm Password: ")
                    TextField("Password", text: $password)
                }.padding(15)
            }

            NavigationLink{
                TabBarViewController()
            }label:{
                newAccountButton}.gesture(TapGesture().onEnded{createUser()})
        }}
}
private var newAccountButton: some View{
    Text("Create Account")
                .font(.title2)
                .foregroundColor(.white)
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 15))
        }


#Preview {
    CreateAccountView()
}
