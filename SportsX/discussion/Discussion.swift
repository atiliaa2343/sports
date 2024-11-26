//
//  Discussion.swift
//  SportsX
//
//  Created by Atilia T on 10/29/24.
//

import SwiftUI

struct DiscussionTab: View {
    var body: some View {
        VStack {
            // Header Title
            Text("Lakers")
                .font(.largeTitle)
                .bold()
                .padding(.top, 20)

            Spacer().frame(height: 20)

            // Post Card
            VStack(alignment: .leading) {
                // Post Header
                HStack {
                    Image("nba_logo") // Replace with the actual NBA logo asset
                        .resizable()
                        .frame(width: 40, height: 40)
                    
                    Text("NBA News")
                        .font(.headline)
                        .foregroundColor(.gray)
                }
                .padding(.bottom, 10)

                // Post Title and Details
                Text("LeBron scores 30 points")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 5)

                Text("LeBron's last game of the season")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.bottom, 5)

                // Stats
                Text("30 PTS | 8 AST | 10 TO | 7/14 FG")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.bottom, 10)

                // Post Image
                Image("lebron") // Replace with actual asset name for LeBron's image
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(10)

                Spacer().frame(height: 10)

                // Comments Section
                VStack(alignment: .leading) {
                    Text("View all comments")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                        .padding(.bottom, 5)

                    HStack {
                        TextField("Post a comment ...", text: .constant("")) // Replace with a binding for comment input
                            .padding(10)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(8)

                        Button(action: {
                            // Handle send comment action
                        }) {
                            Text("SEND")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background(Color.blue)
                                .cornerRadius(8)
                        }
                    }
                }
                .padding(.top, 10)
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            .padding(.horizontal)

            Spacer()
        }
        .background(Color.black.opacity(0.9).ignoresSafeArea())
    }
}

// MARK: - Preview
struct DiscussionView_Previews: PreviewProvider {
    static var previews: some View {
        DiscussionTab()
    }
}
