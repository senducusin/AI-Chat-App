//
//  OnboardingCompletedView.swift
//  AI-Chat-App
//
//  Created by Jansen Ducusin on 7/21/25.
//

import SwiftUI

struct OnboardingCompletedView: View {
    @Environment(AppState.self) private var root
    @State private var isCompletingProfileSetup: Bool = false
    var selectedColor: Color = .orange

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Setup Complete")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(selectedColor)

            Text("We've set up your profile and you're ready to start chatting.")
                .font(.title)
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
        .frame(maxHeight: .infinity)
        .safeAreaInset(edge: .bottom, content: {
            buttonSection
        })
        .padding(16)
        .toolbar(.hidden, for: .navigationBar)
    }

    private var buttonSection: some View {
        Button {
            onFinishedButtonPressed()
        } label: {
            ZStack {
                if isCompletingProfileSetup {
                    ProgressView()
                        .tint(.white)
                } else {
                    Text("Finish")
                }
            }
            .callToActionButton()
        }
        .disabled(isCompletingProfileSetup)
    }

    func onFinishedButtonPressed() {
        isCompletingProfileSetup = true

        Task {
//            try await saveUserProfile
            try await Task.sleep(for: .seconds(3))
            root.updateViewState(showTabBarView: true)
            isCompletingProfileSetup = false
        }
    }
}

#Preview {
    OnboardingCompletedView(selectedColor: .red)
        .environment(AppState())
}
