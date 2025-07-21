//
//  ProfileView.swift
//  AI-Chat-App
//
//  Created by Jansen Ducusin on 7/21/25.
//

import SwiftUI

struct ProfileView: View {
    @State private var showSettingsView: Bool = false

    var body: some View {
        NavigationStack {
            Text("Profile")
                .navigationTitle("Profile")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        settingsButton
                    }
                }
                .sheet(isPresented: $showSettingsView) {
                    SettingsView()
                }
        }
    }

    private var settingsButton: some View {
        Button {
            onSettingsTap()
        } label: {
            Image(systemName: "gear")
                .font(.headline)
        }
    }

    private func onSettingsTap() {
        showSettingsView = true
    }
}

#Preview {
    ProfileView()
}
