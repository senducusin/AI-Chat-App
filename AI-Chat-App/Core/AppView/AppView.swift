//
//  AppView.swift
//  AI-Chat-App
//
//  Created by Jansen Ducusin on 7/21/25.
//

import SwiftUI

struct AppView: View {
    @AppStorage("showTabbarView") var showTabBar: Bool = false

    var body: some View {
        AppViewBuilder(showTabBar: showTabBar,
                       tabbarView: {
            TabBarView()
        },
                       onboardingView: {
            WelcomeView()
        })
    }
}

#Preview {
    AppView(showTabBar: true)
}
