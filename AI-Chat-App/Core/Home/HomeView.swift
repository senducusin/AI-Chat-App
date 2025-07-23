//
//  HomeView.swift
//  AI-Chat-App
//
//  Created by Jansen Ducusin on 7/21/25.
//

import SwiftUI

struct HomeView: View {
    let avatar = AvatarModel.mock

    var body: some View {
        NavigationStack {
            HeroCell(
                title: avatar.name,
                subTitle: avatar.characterDescription,
                imageName: avatar.profileImageName
            )
            .frame(height: 200)
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}
