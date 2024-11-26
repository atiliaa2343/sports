//
//  Predictionsall.swift
//  SportsX
//
//  Created by Atilia T on 11/26/24.
//

import SwiftUI

struct GameDetailView: View {
    var body: some View {
        VStack {
            // Header with Match Results
            HStack {
                
                VStack(alignment: .leading, spacing: 10) {
                    Spacer().frame(height: 100)
                    HStack {
                        Image("lakers") // Replace with your asset
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Lakers")
                            .font(.headline)
                        Spacer()
                        Text("90")
                            .font(.headline)
                    }
                   
                    HStack {
                        Image("hawks") // Replace with your asset
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
                    Spacer().frame(height: 90)
                    HStack {
                        Image("heat") // Replace with your asset
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Heat")
                            .font(.headline)
                        Spacer()
                        Text("72")
                            .font(.headline)
                    }

                    HStack {
                        Image("wizards") // Replace with your asset
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

            // Matchup Section
            VStack(spacing: 10) {
                Text("Lakers @ Atlanta")
                    .font(.title)
                    .bold()
                    .foregroundColor(.gray)

                Text("Sunday Oct 27")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                HStack(spacing: 20) {
                    Image("lakers_logo") // Replace with your asset
                        .resizable()
                        .frame(width: 80, height: 80)

                    Image("hawks_logo") // Replace with your asset
                        .resizable()
                        .frame(width: 80, height: 80)
                }

                HStack(spacing: 50) {
                    Text("90")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.gray)

                    Text("67")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.gray)
                }
                .padding(.horizontal, 50)
            }
            .padding()

            // Starting Lineups Section
            VStack(alignment: .leading, spacing: 10) {
                Text("Starting Lineups")
                    .font(.headline)
                    .foregroundColor(.gray)

                Text("Click on Player to view predictions")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                // Dynamic Grid for Players
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(players, id: \.id) { player in
                        Button(action: {
                            // Handle player click for predictions
                        }) {
                            VStack {
                                Image(player.imageName)
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 80, height: 80)

                                Text(player.name)
                                    .font(.caption)
                                    .multilineTextAlignment(.center)
                            }
                        }
                    }
                }
            }
            .padding()
        }
        .padding(.bottom, 20)
        .background(Color.black.opacity(0.9).ignoresSafeArea())
    }
}

// MARK: - Sample Player Data
struct Player: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}

let players: [Player] = [
    Player(name: "LeBron James", imageName: "lebron"),
    Player(name: "Trae Young", imageName: "trae"),
    Player(name: "Dalton Knecht", imageName: "dalton"),
    Player(name: "Bogdon B.", imageName: "bogdan"),
    Player(name: "Bronny James", imageName: "bronny"),
    Player(name: "Jalen Johnson", imageName: "jalen"),
    Player(name: "Rui Hachimura", imageName: "rui"),
    Player(name: "Dyson Daniels", imageName: "dyson")
]

// MARK: - Preview
struct GameDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GameDetailView()
    }
}
