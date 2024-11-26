import SwiftUI

// Define Team Struct
struct Team: Identifiable {
    let id = UUID()
    let name: String
    let logo: String
}

struct NBAView: View {
    @State private var searchText = ""

    // Sample team data
    let teams = [
        Team(name: "Washington Wizards", logo: "wizards"),
        Team(name: "Miami Heat", logo: "heat"),
        Team(name: "Atlanta Hawks", logo: "hawks"),
        Team(name: "Los Angeles Lakers", logo: "lakers")
    ]

    var filteredTeams: [Team] {
        if searchText.isEmpty {
            return teams
        } else {
            return teams.filter { $0.name.lowercased().contains(searchText.lowercased()) }
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                // Search Bar
                TextField("Search...", text: $searchText)
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding([.leading, .trailing])

                // List of Teams
                List(filteredTeams) { team in
                    Button(action: {
                        print("Tapped on \(team.name)")
                        // Navigate to another view or perform an action here
                    }) {
                        HStack {
                            Image(team.logo) // Replace with your image asset names
                                .resizable()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            Text(team.name)
                                .font(.headline)
                        }
                        .padding(.vertical, 5)
                    }
                }
                .listStyle(PlainListStyle())
            }
            .navigationBarTitle("NBA", displayMode: .inline)
        }
    }
}

struct TabBarView: View {
    var body: some View {
        TabView {
            // Home Tab
            HomeScreen()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            // Profile Tab
            ProfileTab()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }

            // Predictions Tab
            PredictionsScreen()
                .tabItem {
                    Label("Predictions", systemImage: "bolt")
                }

            // Notifications Tab
            NotificationsTab()
                .tabItem {
                    Label("Notifications", systemImage: "bell")
                }

            // Discussion Tab
            DiscussionTab()
                .tabItem {
                    Label("Discussion", systemImage: "person.3")
                }

            // Player Profile Tab
            PlayerProfileView(
                playerName: "LeBron James",
                playerImageName: "lebron", // Replace with your actual image asset name
                gameDate: "October 27",
                points: 50,
                rebounds: 15,
                assists: 10
            )
            .tabItem {
                Label("Player", systemImage: "person.crop.circle")
            }
        }

    }
}

struct NBAView_Previews: PreviewProvider {
    static var previews: some View {
        NBAView()
    }
}

