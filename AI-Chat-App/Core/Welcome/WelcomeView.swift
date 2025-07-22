//
//  WelcomeView.swift
//  AI-Chat-App
//
//  Created by Jansen Ducusin on 7/21/25.
//

import SwiftUI

struct WelcomeView: View {
    @State private var imageName: String = Constants.randomImage

    var body: some View {
        NavigationStack {
            VStack(spacing: 8) {
                ImageLoaderView(urlString: imageName)
                    .ignoresSafeArea()

                titleSection
                    .padding(.top, 24)

                ctaControls
                    .padding(16)

                policyLinks
            }
        }
    }

    private var titleSection: some View {
        VStack(spacing: 8) {
            Text("AI Chat App")
                .font(.largeTitle)
                .fontWeight(.semibold)

            Text("by senducusin@gmail.com")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }

    private var ctaControls: some View {
        VStack {
            NavigationLink {
                OnboardingCompletedView()
            } label: {
                Text("Get Started")
                    .callToActionButton()
            }

            Text("Already have an account? Log in")
                .underline()
                .font(.body)
                .padding(8)
                .onTapGesture {
                    dump("DEBUG: Log in")
                }
        }
    }

    private var policyLinks: some View {
        HStack(spacing: 8) {
            Link(destination: URL(string: Constants.appleURL)!) {
                Text("Terms of Service")
            }

            Circle()
                .fill(.accent)
                .frame(width: 4, height: 4)

            Link(destination: URL(string: Constants.appleURL)!) {
                Text("Privacy Policy")
            }
        }
    }
}

#Preview {
    WelcomeView()
}
