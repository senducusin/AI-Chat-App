//
//  OnboardingIntroView.swift
//  AI-Chat-App
//
//  Created by Jansen Ducusin on 7/22/25.
//

import SwiftUI

struct OnboardingIntroView: View {
    var body: some View {
        VStack {
            Group {
                Text("Make your own ")
                + Text("avatars ")
                    .foregroundStyle(.accent)
                    .fontWeight(.semibold)
                + Text("and chat with them!\n\nHave ")
                + Text("real conversations ")
                    .foregroundStyle(.accent)
                    .fontWeight(.semibold)
                + Text("with AI generated responses.")
            }
            .baselineOffset(6)
            .frame(maxHeight: .infinity)
            .padding(24)

            NavigationLink {
                OnboardingColorView()
            } label: {
                Text("Continue")
                    .callToActionButton()
            }
        }
        .padding(24)
        .font(.title3)
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    OnboardingIntroView()
}
