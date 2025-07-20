//
//  TabBarView.swift
//  AI-Chat-App
//
//  Created by Jansen Ducusin on 7/21/25.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

            MessagesView()
                .tabItem {
                    Label("Messages", systemImage: "bubble.left.and.bubble.right.fill")
                }

            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    TabBarView()
}
