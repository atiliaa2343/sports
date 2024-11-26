//
//  Discussion1.swift
//  SportsX
//
//  Created by Atilia T on 11/26/24.
//

import SwiftUI

struct DiscussionPostView: View {
    var body: some View {
        VStack {
            // Post Header
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image("nba_logo") // Replace with your actual NBA logo asset name
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text("NBA News")
                        .font(.headline)
                        .foregroundColor(.gray)
                }

                Text("LeBron scores 30 points")
                    .font(.title2)
                    .bold()

                Text("LeBron's last game of the season")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                Text("30 PTS | 8 AST | 10 TO | 7/14 FG")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            .padding(.horizontal)

            // Post Content
            VStack {
                Image("lebron") // Replace with your actual image asset
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(10)

                Text("30")
                    .font(.headline)
                    .padding(.top, 5)
            }
            .padding(.horizontal)

            Spacer().frame(height: 20)

            // Comments Section
            VStack(alignment: .leading, spacing: 15) {
                // First Comment
                HStack {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.gray)
                    VStack(alignment: .leading) {
                        Text("user567")
                            .font(.headline)
                        Text("Nice!")
                            .font(.subheadline)
                    }
                    Spacer()
                    HStack(spacing: 10) {
                        Button(action: {
                            // Reply action
                        }) {
                            Text("Reply")
                                .font(.subheadline)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Image(systemName: "heart")
                            Text("8")
                        }
                        .foregroundColor(.gray)
                    }
                }
                Divider()

                // Add more comments here as needed
            }
            .padding(.horizontal)

            Spacer()

            // Add Comment Section
            HStack {
                TextField("Post a comment ...", text: .constant("")) // Replace with binding for comment input
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)

                Button(action: {
                    // Handle sending the comment
                }) {
                    Text("SEND")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal)
        }
        .background(Color.black.opacity(0.9).ignoresSafeArea())
    }
}

// MARK: - Preview
struct DiscussionPostView_Previews: PreviewProvider {
    static var previews: some View {
        DiscussionPostView()
    }
}
