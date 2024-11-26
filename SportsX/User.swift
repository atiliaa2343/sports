//
//  User.swift
//  SportsX
//
//  Created by Atilia T on 10/29/24.
//

//
//  UserProfileView.swift
//  SportsX
//
//  Created by Atilia T on 11/26/24.
//

import SwiftUI

struct ProfileTab: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Header with Username and Settings Icon
                HStack {
                    Image(systemName: "gearshape.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                        .padding(.leading)

                    Spacer()

                    Text("ATILIA THOMAS")
                        .font(.largeTitle)
                        .bold()

                    

                    Color.clear // To balance the alignment
                        .frame(width: 30, height: 30)
                }
                .padding(.top, 20)

                // Profile Completion Section
                VStack(spacing: 10) {
                    Spacer().frame(height:10)
                    Text("Complete Your Profile")
                        .font(.headline)
                    Spacer().frame(height:10)
                    HStack(spacing: 15) {
                        Image(systemName: "calendar")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Spacer()
                        Rectangle()
                            .fill(Color.gray.opacity(0.5))
                            .frame(height: 2)
                        Spacer()
                        Image(systemName: "pencil")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    .padding(.horizontal)
                }

                Divider()

                // Manage Streams Section
                VStack(spacing: 10) {
                    Text("Manage Streams")
                        .font(.title2)
                        .bold()
                    Spacer().frame(height:20)
                    HStack(spacing: 30) {
                        VStack {
                            Image(systemName: "tray.full")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.gray)
                            Text("Saved for Later")
                                .font(.subheadline)
                        }
                        Spacer().frame(width:10)
                        VStack {
                            Image(systemName: "bolt")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.gray)
                            Text("Trending")
                                .font(.subheadline)
                        }
                        Spacer().frame(width:10)

                        VStack {
                            Image(systemName: "lightbulb")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.gray)
                            Text("Top News")
                                .font(.subheadline)
                        }
                    }
                }

                // NBA, NFL, MLB Buttons
                HStack(spacing: 30) {
                    VStack {
                        Image("nba") // Replace with NBA logo asset
                            .resizable()
                            .frame(width: 60, height: 60)
                        Text("NBA")
                            .font(.headline)
                    }
                    Spacer().frame(width:10)

                    VStack {
                        Image("nfl") // Replace with NFL logo asset
                            .resizable()
                            .frame(width: 60, height: 60)
                        Text("NFL")
                            .font(.headline)
                    }
                    
                    Spacer().frame(width:10)

                    VStack {
                        Image("mlb") // Replace with MLB logo asset
                            .resizable()
                            .frame(width: 60, height: 60)
                        Text("MLB")
                            .font(.headline)
                    }
                }
                .padding(.top)

                Spacer()
            }
            .padding()
            .background(Color.black.ignoresSafeArea()) // Black background
            .foregroundColor(.white) // White text
            .navigationBarHidden(true)
        }
    }
}

// MARK: - Preview
struct ProfileTabView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTab()
    }
}
