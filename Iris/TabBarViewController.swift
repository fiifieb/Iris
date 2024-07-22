//
//  TabBarViewController.swift
//  Untitled Unmastered
//
//  Created by Fiifi Botchway on 4/25/24.
//

import SwiftUI
struct TabBarViewController: View {
    var body: some View {
        TabView {
                    MainScreenView()
                        .tabItem {
                            Label("Events", systemImage: "book.pages.fill")
                        }

            AddEventView()
                .tabItem {
                    Label("New Event", systemImage: "square.and.pencil")
                }
//            AccountInfoView()
//                .tabItem {
//                    Label("Account", systemImage: "person.crop.circle.fill")
//                }
                }
        .onAppear() {
            UITabBar.appearance().backgroundColor = .init(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 0.09)
            }
    }
}

#Preview {
    TabBarViewController()
}
