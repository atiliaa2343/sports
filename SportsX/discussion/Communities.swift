//
//  Communities.swift
//  SportsX
//
//  Created by Atilia T on 11/8/24.
//

import SwiftUI

struct CommunitiesScreen: View {
    var body: some View {
        VStack {
            Text("Communities")
                .font(.largeTitle)
                .bold()
                .padding(.top)

            // Search Bar
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                TextField("Search...", text: .constant(""))
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
            }
            .padding(.horizontal)
            .background(Color.black.opacity(0.2))
            .cornerRadius(8)
            .padding(.horizontal)

            Spacer().frame(height: 20)

            // Community Buttons
            VStack(spacing: 20) {
                CommunityButton(imageName: "nba", label: "NBA")
                CommunityButton(imageName: "nfl", label: "NFL")
                CommunityButton(imageName: "mlb", label: "MLB")
            }
            Spacer()
        }
        .background(Color.gray.ignoresSafeArea())
    }
}

struct CommunityButton: View {
    var imageName: String
    var label: String

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 100)
            Text(label)
                .font(.headline)
                .foregroundColor(.white)
        }
    }
}

struct CommunitiesScreen_Previews: PreviewProvider {
    static var previews: some View {
        CommunitiesScreen()
    }
}
