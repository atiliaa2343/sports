//
//  AIChatbot.swift
//  SportsX
//
//  Created by Atilia T on 10/29/24.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Welcome to Octavia, search anything related to MLB, NBA, or NFL")
                .font(.title3)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                TextField("Search...", text: .constant(""))
                    .padding(.vertical, 8)
            }
            .padding(.horizontal)
            .background(Color.black.opacity(0.2))
            .cornerRadius(8)
            .padding(.horizontal)
            Spacer()
        }
        .background(Color.gray.ignoresSafeArea())
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
