//
//  HeroCell.swift
//  AI-Chat-App
//
//  Created by Jansen Ducusin on 7/24/25.
//

import SwiftUI

struct HeroCell: View {
    var title: String? = "This some title"
    var subTitle: String? = "This some subTitle"
    var imageName: String? = Constants.randomImage

    var body: some View {
        ZStack {
            if let imageName {
                ImageLoaderView(urlString: imageName)
            } else {
                Rectangle()
                    .fill(.accent)
            }
        }
        .overlay(alignment: .bottomLeading, content: {
            VStack(alignment: .leading, spacing: 4) {
                if let title {
                    Text(title)
                        .font(.headline)
                }

                if let subTitle {
                    Text(subTitle)
                        .font(.subheadline)
                }
            }
            .foregroundStyle(.white)
            .padding(16)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                LinearGradient(colors: [
                    .black.opacity(0),
                    .black.opacity(0.3),
                    .black.opacity(0.5)
                ], startPoint: .top, endPoint: .bottom)
            )
        })
        .cornerRadius(16)
    }
}

#Preview {
    ScrollView {
        VStack {
            HeroCell()
                .frame(width: 300, height: 200)

            HeroCell()
                .frame(width: 300, height: 400)

            HeroCell(imageName: nil)
                .frame(width: 300, height: 200)

            HeroCell(title: nil)
                .frame(width: 300, height: 200)

            HeroCell(subTitle: nil)
                .frame(width: 300, height: 200)
        }
        .frame(maxWidth: .infinity)
    }
}
