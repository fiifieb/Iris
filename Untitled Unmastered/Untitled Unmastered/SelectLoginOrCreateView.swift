//
//  SelectLoginOrCreateViewController.swift
//  Untitled Unmastered
//
//  Created by Fiifi Botchway on 4/25/24.
//

import SwiftUI

struct SelectLoginOrCreateView: View {
    
    var body: some View {
        NavigationStack{
            ZStack {
                    Rectangle()
                        .fill(Gradient(colors: [.blue, .white]))
                        .ignoresSafeArea()
                }
            VStack(spacing:15){
                NavigationLink{
                    CreateAccountView()
                }label:{
                    createAccountButton}
                NavigationLink{
                    LoginView()
                }label:{
                    loginButton}.padding(20)
            }
            ZStack {
                    Rectangle()
                        .fill(Gradient(colors: [.white, .blue]))
                        .ignoresSafeArea()
            }
        }
    }
}

private var loginButton : some View{
    Text("Log In to Existing Account")
                .font(.title2)
                .foregroundColor(.white)
                .padding(EdgeInsets(top: 10, leading: 50, bottom: 10, trailing: 50))
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 15))
        }

private var createAccountButton : some View{
    Text("Create New Account")
                .font(.title2)
                .foregroundColor(.white)
                .padding(EdgeInsets(top: 10, leading: 75, bottom: 10, trailing: 75))
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 15))
        }


#Preview {
    SelectLoginOrCreateView()
}
