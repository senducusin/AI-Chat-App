//
//  AppView.swift
//  AI-Chat-App
//
//  Created by Jansen Ducusin on 7/21/25.
//

import SwiftUI

struct AppView: View {
    @State var appState: AppState = AppState()

    var body: some View {
        AppViewBuilder(showTabBar: appState.showTabBar,
                       tabbarView: {
            TabBarView()
        },
                       onboardingView: {
            WelcomeView()
        })
        .environment(appState)
    }
}

#Preview {
    AppView(appState: AppState(showTabBar: true))
}
