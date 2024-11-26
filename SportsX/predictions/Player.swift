//
//  Player.swift
//  SportsX
//
//  Created by Atilia T on 10/29/24.
//

import SwiftUI

struct PlayerProfileView: View {
    let playerName: String
    let playerImageName: String
    let gameDate: String
    let points: Int
    let rebounds: Int
    let assists: Int
    
    var body: some View {
        NavigationView { // Wrap the content in a NavigationView
            ZStack {
                Color.black.opacity(0.9)
                    .ignoresSafeArea()
                
                VStack {
                    // Header with Match Results
                    HStack {
                        VStack(alignment: .leading, spacing: 10) {
                            HStack {
                                Image("lakers") // Replace with actual asset name
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text("Lakers")
                                    .font(.headline)
                                Spacer()
                                Text("90")
                                    .font(.headline)
                            }
                            
                            HStack {
                                Image("hawks") // Replace with actual asset name
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text("Hawks")
                                    .font(.headline)
                                Spacer()
                                Text("67")
                                    .font(.headline)
                            }
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 10) {
                            HStack {
                                Image("heat") // Replace with actual asset name
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text("Heat")
                                    .font(.headline)
                                Spacer()
                                Text("72")
                                    .font(.headline)
                            }
                            
                            HStack {
                                Image("wizards") // Replace with actual asset name
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text("Wizards")
                                    .font(.headline)
                                Spacer()
                                Text("83")
                                    .font(.headline)
                            }
                        }
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    
                    // Player Profile
                    VStack(spacing: 20) {
                        // Player Image
                        Image(playerImageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .shadow(radius: 10)
                        
                        // Player Name
                        Text(playerName)
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                        
                        // Game Date
                        Text("Overall Stats for \(gameDate)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        // Player Stats
                        VStack(alignment: .leading, spacing: 10) {
                            HStack {
                                Text("Points:")
                                    .font(.headline)
                                Spacer()
                                Text("\(points)")
                                    .font(.headline)
                            }
                            HStack {
                                Text("Rebounds:")
                                    .font(.headline)
                                Spacer()
                                Text("\(rebounds)")
                                    .font(.headline)
                            }
                            HStack {
                                Text("Assists:")
                                    .font(.headline)
                                Spacer()
                                Text("\(assists)")
                                    .font(.headline)
                            }
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding(.horizontal, 40)
                    }
                    .padding()
                }
            }
            .navigationTitle(playerName)
            .foregroundColor(.white)
            .navigationBarTitleDisplayMode(.inline) // Inline style for the title
        }
    }
}

// MARK: - Preview
struct PlayerProfileView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerProfileView(
            playerName: "LeBron James",
            playerImageName: "lebron",
            gameDate: "October 27",
            points: 50,
            rebounds: 15,
            assists: 10
        )
    }
}
