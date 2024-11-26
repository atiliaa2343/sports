//
//  MLBcommunities.swift
//  SportsX
//
//  Created by Atilia T on 11/25/24.
//

//
//  Communitieslist.swift
//  SportsX
//
//  Created by Atilia T on 11/8/24.
//
import SwiftUI

struct MLBView: View {
    @State private var searchText = ""

    // Sample team data
    let teams = [
        Team(name: "Boston Red Sox",logo:"boston"),
        Team(name: "Chicago Cubs", logo: "chicago"),
        Team(name: "New York Met", logo: "newyork"),
        Team(name: "Miami Marlins", logo: "miami")
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
                    HStack {
                        Image(team.logo) // Team logo
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        Text(team.name) // Team name
                            .font(.headline)
                    }
                    .padding(.vertical, 5)
                }
                .listStyle(PlainListStyle())
            }
            .navigationBarTitle("NBA", displayMode: .inline)
        }
        //.tabBar()
    }
}

// Tab Bar for Bottom Navigation
struct MLBTabBarView: View {
    var body: some View {
        TabView {
            MLBView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Text("Live")
                .tabItem {
                    Image(systemName: "bolt")
                    Text("Live")
                }
            Text("Community")
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Community")
                }
            Text("Notifications")
                .tabItem {
                    Image(systemName: "bell")
                    Text("Notifications")
                }
            Text("Profile")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

// Model for Teams
struct MLBTeam: Identifiable {
    let id = UUID()
    let name: String
    let logo: String
}

// Preview
struct MLB_Previews: PreviewProvider {
    static var previews: some View {
        MLBTabBarView()
    }
}
